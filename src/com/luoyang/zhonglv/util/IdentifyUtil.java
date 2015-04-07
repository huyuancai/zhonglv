package com.luoyang.zhonglv.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;

import org.apache.commons.codec.binary.Base64;

public class IdentifyUtil {

	private final String[] STR_ARRAY = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o",
			"p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
			"K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "1", "2", "3", "4", "5",
			"6", "7", "8", "9", "0" };
	private int width = 60;
	private int height = 20;

	public IdentifyUtil() {
	}

	public IdentifyUtil( int width, int height ) {
		this.width = width > 0 ? width : this.width;
		this.height = height > 0 ? height : this.height;
	}

	public String getRandomString( int length ) {
		if ( length <= 0 ) {
			return null;
		}

		Random random = new Random();
		int x = 0;
		StringBuffer sb = new StringBuffer();
		for ( int i = 0; i < length; i++ ) {
			x = random.nextInt( 62 );
			sb.append( STR_ARRAY[x] );
		}
		return sb.toString();
	}

	/**
	 * 
	 * @param randomString
	 */
	public String createImage( String path, String randomString ) {
		BufferedImage image = new BufferedImage( width, height, BufferedImage.TYPE_INT_RGB );
		// 获取图形上下文
		Graphics g = image.getGraphics();
		// 设定背景色
		g.setColor( getRandColor( 200, 250 ) );
		g.fillRect( 0, 0, width, height );
		// 设定字体
		g.setFont( new Font( "楷体", Font.BOLD, 20 ) );
		Random random = new Random();
		// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
		g.setColor( getRandColor( 160, 200 ) );
		for ( int i = 0; i < 155; i++ ) {
			int x = random.nextInt( width );
			int y = random.nextInt( height );
			int xl = random.nextInt( 12 );
			int yl = random.nextInt( 12 );
			g.drawLine( x, y, x + xl, y + yl );
		}
		char[] rondomChars = randomString.toCharArray();
		for ( int i = 0; i < rondomChars.length; i++ ) {
			g.setColor( new Color( 20 + random.nextInt( 110 ), 20 + random.nextInt( 110 ), 20 + random.nextInt( 110 ) ) );
			g.drawChars( rondomChars, i, 1, 20 * i + 8, 24 );
		}
		// 图象生效
		g.dispose();
		String fileName = MD5Util.MD5( randomString );
		File file = new File( path );
		if ( !file.exists() ) {
			file.mkdirs();
		}
		path += File.separator + fileName + ".jpg";
		file = new File( path );
		OutputStream os = null;
		try {
			os = new FileOutputStream( file );
			ImageIO.write( image, "JPEG", os );
		}
		catch ( IOException e ) {
			System.out.println( "系统信息：[at:IdentifyUtil],写入文件错误！" );
			e.printStackTrace();
		}
		catch ( Exception e ) {
			e.printStackTrace();
		}
		finally {
			try {
				os.flush();
				os.close();
			}
			catch ( IOException e ) {
				System.out.println( "系统信息：[at:IdentifyUtil],未能正确保存验证码图片文件！" );
			}
		}
		return fileName + ".jpg";
	}

	/**
	 * 将图片文件转化为字节数组字符串，并对其进行Base64编码处理
	 * 
	 * @param imgFilePath
	 * @return
	 */
	public String GetImageStr( String imgFilePath ) {
		byte[] data = null;
		// 读取图片字节数组
		try {
			InputStream in = new FileInputStream( imgFilePath );
			data = new byte[in.available()];
			in.read( data );
			in.close();
		}
		catch ( IOException e ) {
			e.printStackTrace();
		}
		// 对字节数组Base64编码
		
		return Base64.encodeBase64String(data);// 返回Base64编码过的字节数组字符串
	}

	/**
	 * 获得随即颜色值
	 * 
	 * @param fc
	 * @param bc
	 * @return
	 */
	private Color getRandColor( int fc, int bc ) {
		// 给定范围获得随机颜色
		Random random = new Random();
		if ( fc > 255 )
			fc = 255;
		if ( bc > 255 )
			bc = 255;
		int r = fc + random.nextInt( bc - fc );
		int g = fc + random.nextInt( bc - fc );
		int b = fc + random.nextInt( bc - fc );
		return new Color( r, g, b );
	}

	/*
	 * 删除文件
	 */
	public Boolean delIdentify( String failname ) {
		File file = new File( failname );
		if ( null != file && file.isFile() ) {
			file.delete();
			return true;
		}
		else {
			return false;
		}
	}
}
