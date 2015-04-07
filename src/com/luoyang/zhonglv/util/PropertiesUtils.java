package com.luoyang.zhonglv.util;

import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletContext;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class PropertiesUtils {
	private static final String SETTINGS_FILE = "/settings.properties";
	private static Log logger = LogFactory.getLog(PropertiesUtils.class);

	public static void initConfigMap(ServletContext application) {
		Map<String, Object> settingsMap = new HashMap<String, Object>();
		String configPath = application.getRealPath("/WEB-INF/conf/");
		try {
			File file = new File(configPath + SETTINGS_FILE);
			FileInputStream inStream = new FileInputStream(file);
			Properties properties = new Properties();
			properties.load(inStream);
			Set<Entry<Object, Object>> entrySet = properties.entrySet();
			for (Entry<Object, Object> entry : entrySet) {
				String key = (String) entry.getKey();
				String value = (String) entry.getValue();
				settingsMap.put(key, value);
			}
			inStream.close();
			application.setAttribute(Constants.SETTINGS_MAP_KEY, settingsMap);
		} catch (Exception e) {
			logger.error(ExceptionUtils.getFullStackTrace(e));
		}
	}
}
