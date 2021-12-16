package org.zerock.domain.project1;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class MemberVO {

	private String id;
	private String password;
	private String email;
	private String address;
	private LocalDateTime inserted;
	private String nickName;
	private Integer numberOfBoard;
	// 추가작업 https://gcstoryword.tistory.com/entry/Java-JSP-%EA%B2%8C%EC%8B%9C%ED%8C%90-%EB%B0%8F-%ED%8E%98%EC%9D%B4%EC%A7%80%EB%84%98%EB%B2%84-%EB%8C%93%EA%B8%80%EA%B8%B0%EB%8A%A5-%EA%B5%AC%ED%98%84
//	private Integer startPage = 1;	// 시작 페이지
//	private Integer endPage;		// 마지막 페이지
//	private Integer currentPage;	// 현재 페이지
//	private Integer boardSize = 10;	// 게시판 사이즈
//	private Integer startRow;		// 게시판 첫 시작 번호
//	private Integer listCount;		// 게시물 전체 갯수
//	private Integer allPage;		// 페이지 전제 갯수
}
