package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class Message {
	private BigDecimal num;
	@NonNull
	private String SendE;
	@NonNull
	private String messageE;
	@NonNull
	private String receiveE;
	private Timestamp senddate;
	
}
