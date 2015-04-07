package com.luoyang.zhonglv.dto;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class VisaDTO {

	private Long visaId;

	private String visaName;

	private Long visaCountry;

	private Long visaType;

	private String visaThumb;

	private BigDecimal visaPrice;

	private Long visaCity;

	private String visaValidity;

	private String visaProcessTime;

	private String visaMaxStay;

	private String visaImmigrantsTimes;

	private String visaInterview;

	private String visaSummary;

	private String visaMaterials;

	private String visaIntroduction;

	private Long visaCount;

	private Timestamp visaCreateTime;

	private Timestamp visaUpdateTime;

	// ------------------------getter/setter------------------------//
	public Long getVisaId() {
		return visaId;
	}

	public void setVisaId( Long visaId ) {
		this.visaId = visaId;
	}

	public String getVisaName() {
		return visaName;
	}

	public void setVisaName( String visaName ) {
		this.visaName = visaName;
	}

	public Long getVisaCountry() {
		return visaCountry;
	}

	public void setVisaCountry( Long visaCountry ) {
		this.visaCountry = visaCountry;
	}

	public Long getVisaType() {
		return visaType;
	}

	public void setVisaType( Long visaType ) {
		this.visaType = visaType;
	}

	public String getVisaThumb() {
		return visaThumb;
	}

	public void setVisaThumb( String visaThumb ) {
		this.visaThumb = visaThumb;
	}

	public BigDecimal getVisaPrice() {
		return visaPrice;
	}

	public void setVisaPrice( BigDecimal visaPrice ) {
		this.visaPrice = visaPrice;
	}

	public Long getVisaCity() {
		return visaCity;
	}

	public void setVisaCity( Long visaCity ) {
		this.visaCity = visaCity;
	}

	public String getVisaValidity() {
		return visaValidity;
	}

	public void setVisaValidity( String visaValidity ) {
		this.visaValidity = visaValidity;
	}

	public String getVisaProcessTime() {
		return visaProcessTime;
	}

	public void setVisaProcessTime( String visaProcessTime ) {
		this.visaProcessTime = visaProcessTime;
	}

	public String getVisaMaxStay() {
		return visaMaxStay;
	}

	public void setVisaMaxStay( String visaMaxStay ) {
		this.visaMaxStay = visaMaxStay;
	}

	public String getVisaImmigrantsTimes() {
		return visaImmigrantsTimes;
	}

	public void setVisaImmigrantsTimes( String visaImmigrantsTimes ) {
		this.visaImmigrantsTimes = visaImmigrantsTimes;
	}

	public String getVisaInterview() {
		return visaInterview;
	}

	public void setVisaInterview( String visaInterview ) {
		this.visaInterview = visaInterview;
	}

	public String getVisaMaterials() {
		return visaMaterials;
	}

	public void setVisaMaterials( String visaMaterials ) {
		this.visaMaterials = visaMaterials;
	}

	public String getVisaIntroduction() {
		return visaIntroduction;
	}

	public void setVisaIntroduction( String visaIntroduction ) {
		this.visaIntroduction = visaIntroduction;
	}

	public Long getVisaCount() {
		return visaCount;
	}

	public void setVisaCount( Long visaCount ) {
		this.visaCount = visaCount;
	}

	public Timestamp getVisaCreateTime() {
		return visaCreateTime;
	}

	public void setVisaCreateTime( Timestamp visaCreateTime ) {
		this.visaCreateTime = visaCreateTime;
	}

	public String getVisaSummary() {
		return visaSummary;
	}

	public void setVisaSummary( String visaSummary ) {
		this.visaSummary = visaSummary;
	}

	public Timestamp getVisaUpdateTime() {
		return visaUpdateTime;
	}

	public void setVisaUpdateTime( Timestamp visaUpdateTime ) {
		this.visaUpdateTime = visaUpdateTime;
	}

}
