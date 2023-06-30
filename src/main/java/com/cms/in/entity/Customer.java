package com.cms.in.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;


@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer cid;
	@Column
	private String cname;
	@Column
	private String ccity;
	@Column
	private Long cmobile;
	
	public Customer() {}
	
	public Customer(Integer cid, String cname, String ccity, Long cmobile) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.ccity = ccity;
		this.cmobile = cmobile;
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCcity() {
		return ccity;
	}

	public void setCcity(String ccity) {
		this.ccity = ccity;
	}

	public Long getCmobile() {
		return cmobile;
	}

	public void setCmobile(Long cmobile) {
		this.cmobile = cmobile;
	}

	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", cname=" + cname + ", ccity=" + ccity + ", cmobile=" + cmobile + "]";
	}
	
	
	
	
}
