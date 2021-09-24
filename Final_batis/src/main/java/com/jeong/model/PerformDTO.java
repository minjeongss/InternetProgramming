package com.jeong.model;
import java.util.Date;
public class PerformDTO {
	private int id;
	private String name;
	private Date date;
	private Date time;
	private String seat;
	private int vip_seat;
	private int r_seat;
	private int s_seat;
	private int a_seat;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getVip_seat() {
		return vip_seat;
	}
	public void setVip_seat(int vip_seat) {
		this.vip_seat = vip_seat;
	}
	public int getR_seat() {
		return r_seat;
	}
	public void setR_seat(int r_seat) {
		this.r_seat = r_seat;
	}
	public int getS_seat() {
		return s_seat;
	}
	public void setS_seat(int s_seat) {
		this.s_seat = s_seat;
	}
	public int getA_seat() {
		return a_seat;
	}
	public void setA_seat(int a_seat) {
		this.a_seat = a_seat;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
}
