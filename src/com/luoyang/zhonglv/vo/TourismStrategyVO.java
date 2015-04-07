package com.luoyang.zhonglv.vo;

/**
 * 旅游攻略VO
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class TourismStrategyVO {

	private Long strategyId;

	private String strategyName;

	private String strategyContent;

	private Long strategyCounts;

	private String strategyCreateTime;

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

	public String getStrategyCreateTime() {
		return strategyCreateTime;
	}

	public void setStrategyCreateTime( String strategyCreateTime ) {
		this.strategyCreateTime = strategyCreateTime;
	}

}
