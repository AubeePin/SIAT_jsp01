package org.mingyeong.model;

public class SaramDTO {
	private int seq;
	private String name;
	private int age;
	private String job;
	private String addr;
	private String email;
	private String phone;
	
	public SaramDTO() {
		this(0,"",0,"","","","");
	}

	public SaramDTO(int seq, String name, int age, String job, String addr, String email, String phone) {
		this.seq = seq;
		this.name = name;
		this.age = age;
		this.job = job;
		this.addr = addr;
		this.email = email;
		this.phone = phone;
	}
	public SaramDTO(int seq) {
		this.seq = seq;
		this.name = "";
		this.age = 0;
		this.job = "";
		this.addr = "";
		this.email = "";
		this.phone = "";
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "saramDTO [seq=" + seq + ", name=" + name + ", age=" + age + ", job=" + job + ", addr=" + addr
				+ ", email=" + email + ", phone=" + phone + "]";
	}
	
}

