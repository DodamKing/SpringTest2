package com.spring.springInterceptor.db.vo;

public class UserVO {
	private int idx;
	private String name;
	private String pwd;
	private int age;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		return "UserVO [idx=" + idx + ", name=" + name + ", pwd=" + pwd + ", age=" + age + "]";
	}
	
}
