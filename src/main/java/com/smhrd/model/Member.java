package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
@NoArgsConstructor //기본생성자
@RequiredArgsConstructor
@Getter
@AllArgsConstructor
public class Member {
	
	@NonNull
	private String id;
	@NonNull
	private String pw;
	private String nick;
	private String name;
	private String phone;
	private String account;
	private String jumin;
	private Timestamp  joindate;
	private char type; 
	private double temper;
	private String area; 
	
	
}
