package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//싱글톤
public class Dao {
	//static 초기화
	static{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
 //
 private static Dao instance=new Dao();
 private Dao() {}//생성자를 private로 선언
//get메소드
 public static Dao getInstance() {
	return instance;
}
 //연결맺기메소드
 //매개변수를 받지않고 Connection객체를 리턴하는 메소드
 public Connection getConnection() {
	 Connection con=null;//연결객체 선언 및 초기화
	try {
		con = DriverManager
				        .getConnection("jdbc:oracle:thin:@localhost:1521:xe", 
				        		"hr", 
				        		"hr");
	} catch (SQLException e) {e.printStackTrace();
	}
    return con;	//연결객체 리턴 
 }

}
