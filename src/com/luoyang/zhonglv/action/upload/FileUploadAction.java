package com.luoyang.zhonglv.action.upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.UUID;

import org.apache.commons.lang.exception.ExceptionUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.RetUploadFileVO;

public class FileUploadAction extends BaseAction {

	private static final long serialVersionUID = -5363919539909441044L;
	private static final String UPLOAD_FILE_PATH = "/upload";
	private static final String[] fileSuffix = new String[] { ".gif", ".jpg", ".png", ".jpeg", ".bmp" };// 允许上传的文件类型
	private File image;
	private String imageFileName;
	private RetUploadFileVO uploadFileVO;

	/**
	 * 路线缩略图上传
	 * 
	 * @return
	 */
	public String ajaxUploadRouteImage() {
		return uploadImage( UPLOAD_FILE_PATH + "/Route" );
	}

	/**
	 * 景点缩略图上传
	 * 
	 * @return
	 */
	public String ajaxUploadSceneryImage() {
		return uploadImage( UPLOAD_FILE_PATH + "/Scenery" );
	}

	/**
	 * 签证缩略图上传
	 * 
	 * @return
	 */
	public String ajaxUploadVisaImage() {
		return uploadImage( UPLOAD_FILE_PATH + "/Visa" );
	}

	private String uploadImage( String savePath ) {
		uploadFileVO = new RetUploadFileVO();
		String path = getApplication().getRealPath( savePath );
		logger.info( "filePath:" + path );
		File file = new File( path ); // 判断文件夹是否存在,如果不存在则创建文件夹
		if ( !file.exists() ) {
			file.mkdirs();
		}

		try {
			File f = this.getImage();
			String imageSuffix = imageFileName.substring( imageFileName.lastIndexOf( "." ) );
			boolean flag = false;
			if ( null == f ) {
				uploadFileVO.setCode( RET_CODE.E91202.getCode() );
				uploadFileVO.setErrMsg( RET_CODE.E91202.getErrMsg() );
				return RET_JSON;
			}
			// 判断文件格式
			for ( int i = 0; i < fileSuffix.length; i++ ) {
				if ( fileSuffix[i].equalsIgnoreCase( imageSuffix ) ) {
					flag = true;
					break;
				}
			}
			if ( !flag ) {
				uploadFileVO.setCode( RET_CODE.E91201.getCode() );
				uploadFileVO.setErrMsg( RET_CODE.E91201.getErrMsg() );
				return RET_JSON;
			}

			FileInputStream inputStream = new FileInputStream( f );
			String newFileName = UUID.randomUUID().toString();
			FileOutputStream outputStream = new FileOutputStream( path + File.separator + newFileName + imageSuffix );
			byte[] buf = new byte[1024];
			int length = 0;
			while ( ( length = inputStream.read( buf ) ) != -1 ) {
				outputStream.write( buf, 0, length );
			}
			inputStream.close();
			outputStream.flush();
			uploadFileVO.setCode( RET_CODE.S90000.getCode() );
			uploadFileVO.setUploadImagePath( savePath + File.separator + newFileName + imageSuffix );
			return RET_JSON;

		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}

		uploadFileVO.setCode( RET_CODE.E91203.getCode() );
		uploadFileVO.setErrMsg( RET_CODE.E91203.getErrMsg() );
		return RET_JSON;
	}

	// ----------------------getter/setter------------------//
	public File getImage() {
		return image;
	}

	public void setImage( File image ) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName( String imageFileName ) {
		this.imageFileName = imageFileName;
	}

	public RetUploadFileVO getUploadFileVO() {
		return uploadFileVO;
	}
}
