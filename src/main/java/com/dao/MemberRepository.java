package com.dao;

import java.util.ArrayList;

import com.dto.Book;
import com.dto.Member;

public class MemberRepository {
	
	private ArrayList<Member> memberList = new ArrayList<Member>();
	
	private static MemberRepository instance = new MemberRepository();
	
	public MemberRepository(){
		Member member1 = new Member();
		member1.setUserSeq("USER0001");
		member1.setId("abc001");
		member1.setPwd("001abc");
		member1.setName("홍길동");
		member1.setGender("남성");
		member1.setAge(30);
		member1.setTel("010-1111-2222");
		member1.setEmail("abc001@naver.com");
		member1.setBirth("1997-05-14");
		member1.setCls("VIP");
		member1.setFootSize(270);
		
		
		Member member2 = new Member();
		member2.setUserSeq("USER0002");
		member2.setId("bcd002");
		member2.setPwd("bcd002");
		member2.setName("김영희");
		member2.setGender("여성");
		member2.setAge(28);
		member2.setTel("010-3333-4444");
		member2.setEmail("bcd002@gmail.com");
		member2.setBirth("1999-03-04");
		member2.setCls("VIP");
		member2.setFootSize(240);
		
		Member member3 = new Member();
		member3.setUserSeq("USER0003");
		member3.setId("cdf003");
		member3.setPwd("003cdf");
		member3.setName("홍길순");
		member3.setGender("여성");
		member3.setAge(25);
		member3.setTel("010-5555-6666");
		member3.setEmail("cdf003@gmail.com");
		member3.setBirth("2002-05-06");
		member3.setCls("일반 회원");
		member3.setFootSize(250);
		
		memberList.add(member1);
		memberList.add(member2);
		memberList.add(member3);
	}
	
	public Member getMemberInfo(String memberId) {
		Member member = null;
		
		for(Member m : memberList) {
			if(m.getUserSeq() != null && m.getUserSeq().equals(memberId)) {
				member = m;
			}
		}
		
		return member;
	}
	
	public static MemberRepository getInstance() {
		return instance;
	}
	
	public ArrayList<Member> getMemberList() {
		return memberList;
	}

	public void addMember (Member member) {
		
		int userNum = memberList.size() + 1;
		String userSeq = "";
		if(userNum < 10) {
			userSeq = "USER000" + userNum;
		} else if(userNum >= 10 && userNum < 100) {
			userSeq = "USER00" + userNum;
		} else if(userNum >= 100 && userNum < 1000 ) {
			userSeq = "USER0" + userNum;
		} else if(userNum >= 1000 && userNum < 10000) {
			userSeq = "USER" + userNum;
		}

		member.setUserSeq(userSeq);
		
		memberList.add(member);
	}
	
		
}
