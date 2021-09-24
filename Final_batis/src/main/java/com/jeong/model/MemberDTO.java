package com.jeong.model;

import java.util.Date;

public class MemberDTO {
   private String name;
   private String phone;
   private String id;
   private String pwd;
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPwd() {
      return pwd;
   }
   public void setPwd(String pwd) {
      this.pwd = pwd;
   }
   
   @Override
	public String toString() {
		return "User [userid=" + name + ", firstName=" + phone + ", lastName=" + id + ", email=" + pwd
				+ "]";
	}
}