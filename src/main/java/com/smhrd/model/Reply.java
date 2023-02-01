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
public class Reply {
	private BigDecimal num;
	@NonNull
	private BigDecimal boardnum;
	@NonNull
	private String content;
	@NonNull
	private String writer;
	
	
}
