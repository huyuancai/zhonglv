package com.luoyang.zhonglv.dto;

import java.sql.Timestamp;

public class TourismStrategyDTO {

	private Long strategyId;

	private String strategyName;

	private String strategyContent;

	private Long strategyCounts;

	private Timestamp strategyCreateTime;

	// ------------------------getter/setter------------------------//
	public Long getStrategyId() {
		return strategyId;
	}

	public void setStrategyId( Long strategyId ) {
		this.strategyId = strategyId;
	}

	public String getStrategyName() {
		return strategyName;
	}

	public void setStrategyName( String strategyName ) {
		this.strategyName = strategyName;
	}

	public String getStrategyContent() {
		return strategyContent;
	}

	public void setStrategyContent( String strategyContent ) {
		this.strategyContent = strategyContent;
	}

	public Long getStrategyCounts() {
		return strategyCounts;
	}

	public void setStrategyCounts( Long strategyCounts ) {
		this.strategyCounts = strategyCounts;
	}

	public Timestamp getStrategyCreateTime() {
		return strategyCreateTime;
	}

	public void setStrategyCreateTime( Timestamp strategyCreateTime ) {
		this.strategyCreateTime = strategyCreateTime;
	}

}
