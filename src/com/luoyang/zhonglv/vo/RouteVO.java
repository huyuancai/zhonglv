package com.luoyang.zhonglv.vo;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 线路VO Descriptions
 * 
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 * 
 */
public class RouteVO {
	private Long routeId; // 线路ID
	private String routeName;// 线路名称
	private String routeNumber;// 线路编号
	private Long routeType;// 线路类型
	private String routeTypeName;// 线路类型名称
	private String topics[];// 线路专题
	private String routeTitle;// 标题
	private Integer routeDays;// 天数
	private String routeThumb;// 缩略图
	private Long routeDestinationCity;// 目的地城市
	private Long routeDepartureCity;// 出发城市
	private String routeDepartureCityName;// 出发城市名称
	private String routeTransportMode;// 交通方式
	private Date routeDepartureDate;// 出发日期
	private BigDecimal routePrice;// 价格
	private Integer routeDestineDays;// 提前{#days}天预定
	private String routeSummary;// 摘要
	private String routeFeatureDesc;// 特色说明
	private String routeBookingPolicy;// 预定须知
	private String routeTips;// 温馨提示
	private String routeItinerary;// 行程
	private String routeAdvisory;// 线路咨询
	private String routeStrategy;// 旅游攻略
	private Boolean routeRecommend;// 是否推荐
	private String routePayMethod;// 付款方式
	private String routeCreateDate;// 创建日期
	private List<RouteImageVO> routeImageVOs;

	public Long getRouteId() {
		return routeId;
	}

	public void setRouteId( Long routeId ) {
		this.routeId = routeId;
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName( String routeName ) {
		this.routeName = routeName;
	}

	public String getRouteNumber() {
		return routeNumber;
	}

	public void setRouteNumber( String routeNumber ) {
		this.routeNumber = routeNumber;
	}

	public Long getRouteType() {
		return routeType;
	}

	public void setRouteType( Long routeType ) {
		this.routeType = routeType;
	}

	public String getRouteTypeName() {
		return routeTypeName;
	}

	public void setRouteTypeName( String routeTypeName ) {
		this.routeTypeName = routeTypeName;
	}

	public String[] getTopics() {
		return topics;
	}

	public void setTopics( String[] topics ) {
		this.topics = topics;
	}

	public String getRouteTitle() {
		return routeTitle;
	}

	public void setRouteTitle( String routeTitle ) {
		this.routeTitle = routeTitle;
	}

	public Integer getRouteDays() {
		return routeDays;
	}

	public void setRouteDays( Integer routeDays ) {
		this.routeDays = routeDays;
	}

	public String getRouteThumb() {
		return routeThumb;
	}

	public void setRouteThumb( String routeThumb ) {
		this.routeThumb = routeThumb;
	}

	public Long getRouteDestinationCity() {
		return routeDestinationCity;
	}

	public void setRouteDestinationCity( Long routeDestinationCity ) {
		this.routeDestinationCity = routeDestinationCity;
	}

	public Long getRouteDepartureCity() {
		return routeDepartureCity;
	}

	public void setRouteDepartureCity( Long routeDepartureCity ) {
		this.routeDepartureCity = routeDepartureCity;
	}

	public String getRouteDepartureCityName() {
		return routeDepartureCityName;
	}

	public void setRouteDepartureCityName( String routeDepartureCityName ) {
		this.routeDepartureCityName = routeDepartureCityName;
	}

	public String getRouteTransportMode() {
		return routeTransportMode;
	}

	public void setRouteTransportMode( String routeTransportMode ) {
		this.routeTransportMode = routeTransportMode;
	}

	public Date getRouteDepartureDate() {
		return routeDepartureDate;
	}

	public void setRouteDepartureDate( Date routeDepartureDate ) {
		this.routeDepartureDate = routeDepartureDate;
	}

	public BigDecimal getRoutePrice() {
		return routePrice;
	}

	public void setRoutePrice( BigDecimal routePrice ) {
		this.routePrice = routePrice;
	}

	public Integer getRouteDestineDays() {
		return routeDestineDays;
	}

	public void setRouteDestineDays( Integer routeDestineDays ) {
		this.routeDestineDays = routeDestineDays;
	}

	public String getRouteSummary() {
		return routeSummary;
	}

	public void setRouteSummary( String routeSummary ) {
		this.routeSummary = routeSummary;
	}

	public String getRouteFeatureDesc() {
		return routeFeatureDesc;
	}

	public void setRouteFeatureDesc( String routeFeatureDesc ) {
		this.routeFeatureDesc = routeFeatureDesc;
	}

	public String getRouteBookingPolicy() {
		return routeBookingPolicy;
	}

	public void setRouteBookingPolicy( String routeBookingPolicy ) {
		this.routeBookingPolicy = routeBookingPolicy;
	}

	public String getRouteTips() {
		return routeTips;
	}

	public void setRouteTips( String routeTips ) {
		this.routeTips = routeTips;
	}

	public String getRouteItinerary() {
		return routeItinerary;
	}

	public void setRouteItinerary( String routeItinerary ) {
		this.routeItinerary = routeItinerary;
	}

	public String getRouteAdvisory() {
		return routeAdvisory;
	}

	public void setRouteAdvisory( String routeAdvisory ) {
		this.routeAdvisory = routeAdvisory;
	}

	public String getRouteStrategy() {
		return routeStrategy;
	}

	public void setRouteStrategy( String routeStrategy ) {
		this.routeStrategy = routeStrategy;
	}

	public Boolean isRouteRecommend() {
		return routeRecommend;
	}

	public void setRouteRecommend( Boolean routeRecommend ) {
		this.routeRecommend = routeRecommend;
	}

	public String getRoutePayMethod() {
		return routePayMethod;
	}

	public void setRoutePayMethod( String routePayMethod ) {
		this.routePayMethod = routePayMethod;
	}

	public String getRouteCreateDate() {
		return routeCreateDate;
	}

	public void setRouteCreateDate( String routeCreateDate ) {
		this.routeCreateDate = routeCreateDate;
	}

	public List<RouteImageVO> getRouteImageVOs() {
		return routeImageVOs;
	}

	public void setRouteImageVOs( List<RouteImageVO> routeImageVOs ) {
		this.routeImageVOs = routeImageVOs;
	}
	
}
