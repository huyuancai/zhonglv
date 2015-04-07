package com.luoyang.zhonglv.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.dozer.MappingException;

public class BeanUtils {
	/**
	 * 持有Dozer单例, 避免重复创建DozerMapper消耗资源.
	 */
	private static DozerBeanMapper dozer = new DozerBeanMapper();

	/**
	 * 基于Dozer转换对象的类型.
	 */
	public static <T> T copyObject( Object source, Class<T> destinationClass ) throws MappingException {
		return dozer.map( source, destinationClass );
	}

	/**
	 * 基于Dozer转换Collection中对象的类型.
	 */
	public static <T> List<T> copyList( Collection<?> sourceList, Class<T> destinationClass ) throws MappingException {
		List<T> destinationList = new ArrayList<T>();
		if ( destinationClass != null ) {
			for ( Object sourceObject : sourceList ) {
				T destinationObject = copyObject( sourceObject, destinationClass );
				destinationList.add( destinationObject );
			}
		}
		return destinationList;
	}

}
