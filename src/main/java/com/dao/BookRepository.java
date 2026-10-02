package com.dao;

import java.util.ArrayList;

import com.dto.Book;

public class BookRepository {

	private ArrayList<Book> bookList = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public BookRepository() {
		Book book1 = new Book();
		book1.setBookId("ISBN1234");
		book1.setName("C# 프로그래밍");
		book1.setUnitPrice(27000);
		book1.setAuthor("우재남");
		book1.setDescription("C#을 처음 접하는 독자들을 대상으로 일대일 수업처럼 자세히 설명한 책이다. 꼭 알아야 할 핵심 개념은 기분 예제로 최대한 쉽게 설명했으며, "
				+ "중요한 내용은 응용 예제, 퀴즈, 셀프 스터디, 예제 모음으로 한번 더 복습할 수 있다.");
		book1.setPublisher("한빛아카데미");
		book1.setCategory("IT모바일");
		book1.setUnitsInStock(1000);
		book1.setReleaseDate("2022/10/06");
		
		Book book2 = new Book();
		book2.setBookId("ISBN1235");
		book2.setName("자바마스터");
		book2.setUnitPrice(30000);
		book2.setAuthor("송미영");
		book2.setDescription("자바를 처음 배우는 학생을 위해 자바의 기본 개념과 실습 예제를 그림을 이용하여 쉽게 설명합니다. "
				+ "자바의 이론적 개념 → 기본 예제 → 프로젝트 순으로 단계별 학습이 가능하며, 각 챕터의 프로젝트를 실습하면서 온라인 서점을 완성할 수 있도록 구성하였습니다.");
		book2.setPublisher("한빛아카데미");
		book2.setCategory("IT모바일");
		book2.setUnitsInStock(1000);
		book2.setReleaseDate("2023/01/01");
		
		Book book3 = new Book();
		book3.setBookId("ISBN1236");
		book3.setName("파이썬 프로그래밍");
		book3.setUnitPrice(30000);
		book3.setAuthor("최성철");
		book3.setDescription("파이썬으로 프로그래밍을 시작하는 입문자가 쉽게 이해할 수 있도록 기본 개념을 상세하게 설명하며, "
				+ "다양한 예제를 제시합니다. 또한 프로그래밍의 기초 원리를 이해하면서 파이썬으로 데이터를 처리하는 기법도 배웁니다.");
		book3.setPublisher("한빛아카데미");
		book3.setCategory("IT모바일");
		book3.setUnitsInStock(1000);
		book3.setReleaseDate("2023/01/01");
		
		bookList.add(book1);
		bookList.add(book2);
		bookList.add(book3);
	}

	public ArrayList<Book> getBookList() {
		return bookList;
	}
	
	public Book getBookInfo(String bookId) {
		Book book = null;
		
		for(Book b : bookList) {
			if(b.getBookId() != null && b.getBookId().equals(bookId)) {
				book = b;
			}
		}
		
		return book;
	}

	public static BookRepository getInstance() {
		return instance;
	}
	
	public void addBook(Book book) {
		bookList.add(book);
	}
		
}
