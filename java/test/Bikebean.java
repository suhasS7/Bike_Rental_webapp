package test;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Bikebean implements Serializable{
	
	private String bname,btype,bnumber;
	private int bid;
	private double brent;
	public Bikebean() {}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBtype() {
		return btype;
	}
	public void setBtype(String btype) {
		this.btype = btype;
	}
	public String getBnumber() {
		return bnumber;
	}
	public void setBnumber(String bnumber) {
		this.bnumber = bnumber;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public double getBrent() {
		return brent;
	}
	public void setBrent(double brent) {
		this.brent = brent;
	}
	
	}