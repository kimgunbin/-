package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;



@RequiredArgsConstructor
@Getter
@AllArgsConstructor
public class Board {
	private BigDecimal num;
	@NonNull
	private String name;
	@NonNull
	private String writer;
	@NonNull
	private String filename;
	@NonNull
	private String content;
	private String del;
	private String state;
	private String catgory;
	private BigDecimal views;
	private Timestamp uploadday;
	private String buylink;
	private String buypay;
	private String idlink;
	private String idtime;
	private String idpay;
	private String arbeittime;
	private String arbeitsite;
	private String arbeitpay;
	
}
