package com.demo.controller;

import static org.junit.Assert.fail;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

// root-context.xml파일의 DataSourse를 테스트하는 예제.

// JUnit 도구를 이용하여, root-context.xml 파일의 내용을 읽어들이는 의미.
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class DataSourceTest {

	private static final Logger logger = LoggerFactory.getLogger(DataSourceTest.class);

	@Autowired // Dependency Injection(의존성 주입) Anotation(애너테이션)
	private DataSource ds;

	@Test
	public void testConnection() {
		long start = System.currentTimeMillis();

		for (int i = 0; i < 1; i++) {
			// conn 객체가 작업이 끝나면 자동으로 close() 처리를 해 준다.
			// AutoCloseable를 상속받는 클래스만 자동으로 close() 된다.
			try (Connection conn = ds.getConnection()) {

			} catch (Exception ex) {
				fail(ex.getMessage());
			}
		}

		long end = System.currentTimeMillis();

		logger.info("커넥션 연결속도 : " + (end - start));
	}

}
