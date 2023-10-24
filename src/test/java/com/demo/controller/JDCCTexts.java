package com.demo.controller;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// 오라클 데이터베이스 드라이버(ojdbc8.jar)을 이용한 연결 테스트.

public class JDCCTexts {

	private static final Logger logger = LoggerFactory.getLogger(JDCCTexts.class);

	static {
		// jdbc 작업에 사용하는 메서드들이 예외처리 특징을 가지고 있다.
		try {
			Class.forName("oracle.jdbc.OracleDriver"); // 메모리상에 DriverManager객체 생성
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	// 오라클 서버에 연결 테스트 메서드
	@Test // JUnit을 이용한 테스트 메서드로 설정.
	public void testConnection() {
		long start = System.currentTimeMillis();
		// 연결작업. 10000번을 테스트 하려 했으나, 오라클데이터베이스 설정부분으로 인해 테스트 불가.
		// https://blog.naver.com/PostView.nhn?blogId=deersoul6662&logNo=221812017367
		for(int i=0; i<10; i++) {
			// conn 객체가 작업이 끝나면 자동으로 close() 처리를 해 준다.
			// AutoCloseable를 상속받는 클래스만 자동으로 close() 된다.
			try(Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ora_user", "1234")) {
				
			} catch (Exception ex) {
				fail(ex.getMessage());
			}
		}
		
		long end = System.currentTimeMillis();
		
		logger.info("커넥션 연결속도 : " + (end - start));
	}
	
//	@Test
//	public void test() {
//		fail("Not yet implemented");
//	}

}
