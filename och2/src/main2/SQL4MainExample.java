package main2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.DAO;

public class SQL4MainExample {
	public static void main(String[] args) throws SQLException {
		//1.db연결객체 생성
		  DAO dao = DAO.getInstance();	
		//2.db연결맺기
		  Connection con=dao.getConnection();
		//3.쿼리객체 생성
		  int dno=60;
	      String loc="DALLAS";
	      String sql="update dept set loc=? where dno=?";
		  PreparedStatement stmt = con.prepareStatement(sql);
		  //바인딩변수(?)의 순서에 따라 값 바인딩하기
		  stmt.setString(1, loc);
		  stmt.setInt(2, dno); 
		//4.쿼리 실행 및 결과 받기
         System.out.println("쿼리문:"+sql);
	//executeUpdate()메소드 - 실행 후 db에 반영된 행수(건수)를 리턴하는 함수
	 int result = stmt.executeUpdate();
	 if(result>0) 
		 System.out.println("수정성공");
	 else
		 System.out.println("수정실패");
	}
}
