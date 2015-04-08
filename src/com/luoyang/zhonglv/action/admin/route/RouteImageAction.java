package com.luoyang.zhonglv.action.admin.route;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IRouteImageService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.RouteImageVO;

public class RouteImageAction extends BaseAction {

	/** */
	private static final long serialVersionUID = -1726195064214438883L;
	private static final String[] fileSuffix = new String[] { ".gif", ".jpg", ".png", ".jpeg", ".bmp" };// 允许上传的文件类型
	private static final String UPLOAD_FILE_PATH = "/upload/Route/images";
	private IRouteImageService routeImageService;
	private Map<String, String> imageMap = new HashMap<String, String>();
	private RetResultVO resultVO = new RetResultVO();
	private List<RouteImageVO> routeImageVOs;
	private FileInputStream inputStream;
	private FileOutputStream outputStream;
	private String imageSuffix;
	private String newFileName;
	private String path;
	private File[] image;
	private String[] imageNames;
	private Long routeId;
	private Long imageId;
	private String imageAlias;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			if ( null != routeId ) {
				routeImageVOs = routeImageService.getRouteImagesByRouteId( routeId );
			}
			return SUCCESS;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUploadImages() {
		if ( super.isLogin() ) {
			try {
				if ( null != image && image.length > 0 ) {
					RET_CODE code = null;
					for ( int i = 0; i < image.length; i++ ) {
						path = getApplication().getRealPath( UPLOAD_FILE_PATH );
						code = checkImage( image[i], imageNames[i], path );
						if ( code == RET_CODE.S90000 ) {
							inputStream = new FileInputStream( image[i] );
							newFileName = UUID.randomUUID().toString();
							outputStream = new FileOutputStream( path + File.separator + newFileName + imageSuffix );
							byte[] buf = new byte[1024];
							int length = 0;
							while ( ( length = inputStream.read( buf ) ) != -1 ) {
								outputStream.write( buf, 0, length );
							}
							inputStream.close();
							outputStream.flush();
						}
						else {
							resultVO.setCode( code.getCode() );
							resultVO.setErrMsg( code.getErrMsg() );
							return RET_JSON;
						}
						imageMap.put( UPLOAD_FILE_PATH + File.separator + newFileName + imageSuffix, "第" + ( i + 1 )
								+ "张" );
					}
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91203.getCode() );
			resultVO.setErrMsg( RET_CODE.E91203.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String saveRouteImages() throws Exception {
		if ( super.isLogin() ) {
			if ( imageMap.size() > 0 && null != routeId ) {
				try {
					RouteImageVO routeImageVO = null;
					List<RouteImageVO> routeImageVOs = new ArrayList<RouteImageVO>();
					String key, value;
					for ( Entry<String, String> image : imageMap.entrySet() ) {
						key = image.getKey();
						value = image.getValue();
						routeImageVO = new RouteImageVO();
						routeImageVO.setRouteId( routeId );
						routeImageVO.setImagePath( key );
						routeImageVO.setImageAlias( value );
						routeImageVOs.add( routeImageVO );
					}
					if ( routeImageService.addRouteImages( routeImageVOs ) ) {
						imageMap.clear();
					}
				}
				catch ( Exception e ) {
					logger.error( ExceptionUtils.getFullStackTrace( e ) );
				}
			}
			return execute();
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteRouteImage() {
		if ( super.isLogin() ) {
			if ( null != imageId ) {
				String imagePath = routeImageService.getImagePathByImageId( imageId );
				if ( StringUtils.isNotEmpty( imagePath ) ) {
					String filePath = getApplication().getRealPath( imagePath );
					File file = new File( filePath );
					if ( file.exists() ) {
						file.delete();
					}
				}
				routeImageService.deleteRouteImageByImageId( imageId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			resultVO.setCode( RET_CODE.E92121.getCode() );
			resultVO.setCode( RET_CODE.E92121.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateImageAlias() {
		if ( super.isLogin() ) {
			if ( null != imageId && StringUtils.isNotEmpty( imageAlias ) ) {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put( "imageId", imageId );
				paramMap.put( "imageAlias", imageAlias );
				if ( routeImageService.updateImageAlias( paramMap ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			resultVO.setCode( RET_CODE.E92122.getCode() );
			resultVO.setCode( RET_CODE.E92122.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	private RET_CODE checkImage( File file, String fileName, String path ) {
		logger.info( "filePath:" + path );
		File f = new File( path ); // 判断文件夹是否存在,如果不存在则创建文件夹
		if ( !f.exists() ) {
			f.mkdirs();
		}
		try {
			imageSuffix = fileName.substring( fileName.lastIndexOf( "." ) );
			boolean flag = false;
			if ( null == file ) {
				return RET_CODE.E91202;
			}
			// 判断文件格式
			for ( int i = 0; i < fileSuffix.length; i++ ) {
				if ( fileSuffix[i].equalsIgnoreCase( imageSuffix ) ) {
					flag = true;
					break;
				}
			}
			if ( !flag ) {
				return RET_CODE.E91201;
			}
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		return RET_CODE.S90000;
	}

	// ---------------------------------getter/setter-----------------------//
	public File[] getImage() {
		return image;
	}

	public void setImage( File[] image ) {
		this.image = image;
	}

	public String[] getImageNames() {
		return imageNames;
	}

	public void setImageNames( String[] imageNames ) {
		this.imageNames = imageNames;
	}

	public Long getRouteId() {
		return routeId;
	}

	public void setRouteId( Long routeId ) {
		this.routeId = routeId;
	}

	public void setRouteImageService( IRouteImageService routeImageService ) {
		this.routeImageService = routeImageService;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public List<RouteImageVO> getRouteImageVOs() {
		return routeImageVOs;
	}

	public void setRouteImageVOs( List<RouteImageVO> routeImageVOs ) {
		this.routeImageVOs = routeImageVOs;
	}

	public Long getImageId() {
		return imageId;
	}

	public void setImageId( Long imageId ) {
		this.imageId = imageId;
	}

	public String getImageAlias() {
		return imageAlias;
	}

	public void setImageAlias( String imageAlias ) {
		this.imageAlias = imageAlias;
	}

}
