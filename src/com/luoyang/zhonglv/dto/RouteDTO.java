package com.luoyang.zhonglv.dto;

import java.math.BigDecimal;
import java.util.Date;
import java.sql.Timestamp;

public class RouteDTO {
	private long routeId; // 线路ID
	private String routeName;// 线路名称
	private String routeNumber;// 线路编号
	private long routeType;// 线路类型
	private long routeTopics;// 线路专题
	private String routeTitle;// 标题
	private int routeDays;// 天数
	private String routeThumb;// 缩略图
	private long routeDestinationCity;// 目的地城市
	private long routeDepartureCity;// 出发城市
	private String routeTransportMode;// 交通方式
	private Date routeDepartureDate;// 出发日期
	private BigDecimal routePrice;// 价格
	private int routeDestineDays;// 提前{#days}天预定
	private String routeSummary;// 摘要
	private String routeFeatureDesc;// 特色说明
	private String routeBookingPolicy;// 预定须知
	private String routeTips;// 温馨提示
	private String routeItinerary;// 行程
	private String routeAdvisory;// 线路咨询
	private String routeStrategy;// 旅游攻略
	private int routeRecommend;// 是否推荐
	private String routePayMethod;// 付款方式
	private Timestamp routeCreateDate;// 创建日期

	public long getRouteId() {
		return routeId;
	}

	public void setRouteId( long routeId ) {
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

	public long getRouteType() {
		return routeType;
	}

	public void setRouteType( long routeType ) {
		this.routeType = routeType;
	}

	public String getRouteTitle() {
		return routeTitle;
	}

	public void setRouteTitle( String routeTitle ) {
		this.routeTitle = routeTitle;
	}

	public int getRouteDays() {
		return routeDays;
	}

	public void setRouteDays( int routeDays ) {
		this.routeDays = routeDays;
	}

	public String getRouteThumb() {
		return routeThumb;
	}

	public void setRouteThumb( String routeThumb ) {
		this.routeThumb = routeThumb;
	}

	public long getRouteDestinationCity() {
		return routeDestinationCity;
	}

	public void setRouteDestinationCity( long routeDestinationCity ) {
		this.routeDestinationCity = routeDestinationCity;
	}

	public long getRouteDepartureCity() {
		return routeDepartureCity;
	}

	public void setRouteDepartureCity( long routeDepartureCity ) {
		this.routeDepartureCity = routeDepartureCity;
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

	public int getRouteDestineDays() {
		return routeDestineDays;
	}

	public void setRouteDestineDays( int routeDestineDays ) {
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

	public int getRouteRecommend() {
		return routeRecommend;
	}

	public void setRouteRecommend( int routeRecommend ) {
		this.routeRecommend = routeRecommend;
	}

	public String getRoutePayMethod() {
		return routePayMethod;
	}

	public void setRoutePayMethod( String routePayMethod ) {
		this.routePayMethod = routePayMethod;
	}

	public Timestamp getRouteCreateDate() {
		return routeCreateDate;
	}

	public void setRouteCreateDate( Timestamp routeCreateDate ) {
		this.routeCreateDate = routeCreateDate;
	}

	public long getRouteTopics() {
		return routeTopics;
	}

	public void setRouteTopics( long routeTopics ) {
		this.routeTopics = routeTopics;
	}

}
