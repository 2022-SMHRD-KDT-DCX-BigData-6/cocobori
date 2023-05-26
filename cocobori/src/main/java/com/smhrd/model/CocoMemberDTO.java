package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString

public class CocoMemberDTO {
	// 회원 DTO
	@NonNull private String user_email;
	@NonNull private String user_pw;
	private String user_name;
	private String user_nick;
	private String user_phone;
	private String user_birthdate;
	private String user_gender;
	private String user_pet;
	private Date user_joindate;
	private String admin_yn;
}
