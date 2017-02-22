package com.example.domain;

public class Dept {
	int deptno;
	String dname;
	String loc;
	
	public Dept() {
		
	}

	public Dept(int deptno, String dname, String loc) {
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}
	
	//Bean은 class안에 있는것, getter, setter가 있어야 함.
	//property(속성)? getter setter가 있어야 함. getDeptno()에서 get을 빼고 Deptno에서 소문자로 --> deptno = property  
	// deptno 
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	
	// dname
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	
	// loc
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}

}
