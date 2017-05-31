import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.naming.spi.DirStateFactory.Result;

public class MemberDao {
	private String url;
	private String dbid;
	private String dbpw;
	
	private void dbProperitesInit() throws IOException {
		FileInputStream fis = new FileInputStream("d:\\db.properties");
		Properties pro = new Properties();
		pro.load(fis);
		this.url = pro.getProperty("url");
		this.dbid = pro.getProperty("dbid");
		this.dbpw = pro.getProperty("dbpw");
			System.out.println(url);
			System.out.println(dbid);
			System.out.println(dbpw);
	}
	
	public Member sellectMemberById(String id) throws ClassNotFoundException, SQLException, IOException{
		this.dbProperitesInit();
		//Properties db정보 가져옵니다(내부적으로 input..)
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection conn = DriverManager.getConnection(this.url,this.dbid,this.dbpw);
		String sql = "select * from oracle_member where ora_id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, id);
		ResultSet rs = stmt.executeQuery();
		Member member = null;
		if(rs.next()){
			member = new Member();
			member.setId(rs.getString("ora_id"));
			member.setPw(rs.getString("ora_pw"));
			member.setLevel(rs.getString("ora_level"));
			member.setName(rs.getString("ora_name"));
			member.setEmail(rs.getString("ora_email"));
		}
		return member
				;
	}
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException{
		MemberDao mdao = new MemberDao();
		Member m = mdao.sellectMemberById("id002");
			System.out.println(m.getId().equals("홍01"));
			System.out.println(m.getPw());
			System.out.println(m.getLevel());
			System.out.println(m.getName());
	}
}
