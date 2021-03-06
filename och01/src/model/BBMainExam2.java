package model;

//JDBC(Java Database Connectivity)프로그래밍
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class BBMainExam2 {
	public static void main(String[] args) throws SQLException {
	 //1.값입력 --insert
		//1.연결객체 생성 - 1회.
		 Dao dao=Dao.getInstance();
		//2.연결맺기 - 1회
		 Connection con=dao.getConnection();
		//3.쿼리객체 생성 -1회
		 Statement stmt =con.createStatement();
		 //스캐너로 값 입력처리
		 Scanner scanner = new Scanner(System.in);
		 System.out.println("제목을 입력하세요>");
		 String title=scanner.next();
		 System.out.println("내용을 입력하세요>");
		 String content=scanner.next();
		 
		 System.out.println("등록일자를 입력하세요>(2012/05/05)");
		 String regdate=scanner.next();
		 
		 
		//4.입력처리
		 String sql="insert into bb(seq,title,content,regdate) values((select nvl(max(seq),0)+1 seq from bb),'"+title+"','"+content+"','"+regdate+"')";
		 System.out.println("완성된 쿼리문:"+sql);
		 //4-1.입력후 처리
		 //executeUpdate(쿼리문)의 결과 처리된데이타 건수(행:row)를 정수로 리턴
		 int result = stmt.executeUpdate(sql);
		 System.out.println("입력된 건수 :"+result);
		 
	 //2.확인 -- select
		//4.조회
        if(result>0) {
        	sql="select * from bb order by seq";
        	//쿼리 실행후 결과 받기 
        	ResultSet rs=stmt.executeQuery(sql);
        	while(rs.next()) {
        		int seq =rs.getInt(1);// 1번
        		title=rs.getString("title");//칼럼명
        		content=rs.getString(3);//순번3
        		int cnt = rs.getInt(4);//순번4
        		 regdate =rs.getString(5);//순번5
        		System.out.println(seq+"|"+title+"|"+content+"|"+cnt+"|"+regdate);
        	} 
        }//if문 끝.  
	}
}