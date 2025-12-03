package com.sbs.util;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.msfscc.fileinformation.FileIdBothDirectoryInformation;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import com.hierynomus.smbj.share.File;

public class SMBFileHandlerMS {

	private static final Logger LOGGER = LoggerFactory.getLogger(SMBFileHandlerMS.class);

	public SMBFileHandlerMS() {
		super();
	}

	/**
	 * @param server
	 * @param share
	 * @param username
	 * @param password
	 * @param domain
	 * @param folder
	 */
	public List<String> listFiles(String server, String share, String username, String password, String domain,
			String folder) {
		LOGGER.info("Listing files ...");
		List<String> fileList = new ArrayList<String>();
		try (SMBClient client = getClient()) {
			LOGGER.info("After SMB Client ...");
			try (Connection connection = client.connect(server)) {
				LOGGER.info("After SMB Connection ...");
				Session session = connection
						.authenticate(new AuthenticationContext(username, password.toCharArray(), domain));
				LOGGER.info("After SMB Session ...");
				try (DiskShare diskShare = (DiskShare) session.connectShare(share)) {
					LOGGER.info("After SMB Client Connect Share...");
					for (FileIdBothDirectoryInformation f : diskShare.list(folder, "*")) {
						LOGGER.info("Found file: {}", f.getFileName());
						fileList.add(f.getFileName());
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			handleException("ListFiles", e);
		}
		return fileList;
	}

	/**
	 * @param server
	 * @param share
	 * @param username
	 * @param password
	 * @param domain
	 * @param remoteFilePath
	 * @param payloadStream
	 */
	public void writeToSMB(String server, String share, String username, String password, String domain,
			String remoteFilePath, InputStream payloadStream) {

		try (SMBClient client = getClient()) {
			try (Connection connection = client.connect(server)) {
				Session session = connection
						.authenticate(new AuthenticationContext(username, password.toCharArray(), domain));
				try (DiskShare diskShare = (DiskShare) session.connectShare(share)) {

					try (File smbFile = diskShare.openFile(remoteFilePath, EnumSet.of(AccessMask.GENERIC_WRITE), null,
							SMB2ShareAccess.ALL, SMB2CreateDisposition.FILE_OVERWRITE_IF,
							EnumSet.of(SMB2CreateOptions.FILE_NON_DIRECTORY_FILE,
									SMB2CreateOptions.FILE_WRITE_THROUGH));
							OutputStream os = smbFile.getOutputStream()) {

						byte[] buffer = new byte[8192]; // safer for MTU ( buffer default - 4 KB)
						int bytesRead;
						while ((bytesRead = payloadStream.read(buffer)) != -1) {
							os.write(buffer, 0, bytesRead);
						}
						os.flush();
						LOGGER.info("Successfully wrote payload to SMB: {}", remoteFilePath);
					}
				}
			}
		} catch (Exception e) {
			handleException("WriteToSMB", e);
		}
	}

	/**
	 * @return
	 */
	private SMBClient getClient() {
		return new SMBClient(SmbConfig.builder().withDfsEnabled(true).withTimeout(600, TimeUnit.SECONDS)
				.withSoTimeout(600, TimeUnit.SECONDS).withDialects(SMB2Dialect.SMB_3_1_1).build());
	}

	/**
	 * @param context
	 * @param e
	 */
	private void handleException(String context, Exception e) {
		LOGGER.error("[{}] SMB Operation Failed: {}", context, e.getMessage(), e);
		if (e.getMessage() != null && e.getMessage().toLowerCase().contains("connection reset")) {
			LOGGER.warn("Possible TCP/MTU issue detected. Consider verifying MTU settings or increasing timeout.");
		}
	}
}
