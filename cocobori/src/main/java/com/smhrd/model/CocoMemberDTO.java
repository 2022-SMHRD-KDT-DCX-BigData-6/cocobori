package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
// 회원 정보 
public class CocoMemberDTO {

    // 회원 이메일 
    private String user_email;

    // 회원 비밀번호 
    private String user_pw;

    // 회원 이름 
    private String user_name;

    // 회원 닉네임 
    private String user_nick;

    // 회원 전화번호 
    private String user_phone;

    // 회원 생년월일 
    private Date user_birthdate;

    // 회원 성별 
    private String user_gender;

    // 회원 반려동물 
    private String user_pet;

    // 회원 가입일자 
    private Date user_joindate;

    // 관리자 여부 
    private String admin_yn;

}