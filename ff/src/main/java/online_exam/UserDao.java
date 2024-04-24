package online_exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "laya");
            System.out.println("Connected");
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("Not connected");
        }
        return con;
    }

    public static int login(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT sname FROM std WHERE sname=? AND spassword=?");

            ps.setString(1, u.getSname());
            ps.setString(2, u.getSpassword());

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                status = 1; 
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static int save(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO std(sname, spassword) VALUES (?, ?)");

            ps.setString(1, u.getSname());
            ps.setString(2, u.getSpassword());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public static int saves(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO subject1(sname) VALUES (?)");

            ps.setString(1, u.getSubject());
            

            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public static int savet(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO teacher(tname,tpassword) VALUES (?,?)");

            ps.setString(1, u.getTname());
            ps.setString(2, u.getTpassword());

            

            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public static int saveq(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO questions(sname,qname,aop,bop,cop,dop,rop) VALUES (?,?,?,?,?,?,?)");

            ps.setString(1, u.getSubject());
            ps.setString(2, u.getQname());
            ps.setString(3,u.getAop());
            ps.setString(4,u.getBop());
            ps.setString(5,u.getCop());
            ps.setString(6,u.getDop());
            ps.setString(7,u.getRop());

            

            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    

    

    public static List<User> getAllSubjects() {
        List<User> list = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT sname FROM questions GROUP BY sname HAVING COUNT(*)>=1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setSname(rs.getString("sname"));
                list.add(u);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /*public static boolean authenticate(String sname, String spassword) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = getConnection();
            ps = con.prepareStatement("SELECT * FROM std WHERE sname=? AND spassword=?");
            ps.setString(1, sname);
            ps.setString(2, spassword);
            rs = ps.executeQuery();
            return rs.next(); 
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally { 
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }*/
    /*public static User getRecordByreqid(int reqid){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from std where sname=?");  
	        ps.setString(1,sname);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User(); 
	            u.setSname(rs.getString("sname"));
	            u.setSpassword(rs.getString("spassword"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}*/ 
    public static boolean validate(User u) {
    	boolean status=false;
    	try {
    		System.out.println(u.getSname());
    		System.out.println(u.getSpassword());
    		Connection con=getConnection();
    		PreparedStatement ps=con.prepareStatement("select * from std where sname=? and spassword=? ");
    		ps.setString(1,u.getSname());
    		ps.setString(2,u.getSpassword());
    		ResultSet rs=ps.executeQuery();
    		status=rs.next();
    		con.close();
    	}
    	catch(Exception e)
    	{}
    		return status;
    		
    	
    }
    public static boolean validatet(User u) {
    	boolean status=false;
    	try {
    		System.out.println(u.getSname());
    		System.out.println(u.getSpassword());
    		Connection con=getConnection();
    		PreparedStatement ps=con.prepareStatement("select * from teacher where tname=? and tpassword=? ");
    		ps.setString(1,u.getTname());
    		ps.setString(2,u.getTpassword());
    		ResultSet rs=ps.executeQuery();
    		status=rs.next();
    		con.close();
    	}
    	catch(Exception e)
    	{}
    		return status;
    		
    	
    }
    public static boolean validatea(User u) {
    	boolean status=false;
    	try {
    		System.out.println(u.getSname());
    		System.out.println(u.getSpassword());
    		Connection con=getConnection();
    		PreparedStatement ps=con.prepareStatement("select * from admin11 where aname=? and apassword=? ");
    		ps.setString(1,u.getAname());
    		ps.setString(2,u.getApassword());
    		ResultSet rs=ps.executeQuery();
    		status=rs.next();
    		con.close();
    	}
    	catch(Exception e)
    	{}
    		return status;
    		
    	
    }
    public static List<User> getAllRecordsPy(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from questions where sname='python'");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setQname(rs.getString("qname"));  
	            u.setAop(rs.getString("aop"));  
	            u.setBop(rs.getString("bop"));
	            u.setCop(rs.getString("cop"));
	            u.setDop(rs.getString("dop"));
	            u.setRop(rs.getString("rop"));  
	            list.add(u);  
	        }  
	        con.close();
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	} 
    public static List<User> getAllRecordsC(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from questions where sname='c'");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setQname(rs.getString("qname"));  
	            u.setAop(rs.getString("aop"));  
	            u.setBop(rs.getString("bop"));
	            u.setCop(rs.getString("cop"));
	            u.setDop(rs.getString("dop"));
	            u.setRop(rs.getString("rop"));  
	            list.add(u);  
	        }  
	        con.close();
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	} 
    /*public static List<User> getAllRecordsDBMS(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from questions where sname='dbms'");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setQname(rs.getString("qname"));  
	            u.setAop(rs.getString("aop"));  
	            u.setBop(rs.getString("bop"));
	            u.setCop(rs.getString("cop"));
	            u.setDop(rs.getString("dop"));
	            u.setRop(rs.getString("rop"));  
	            list.add(u);  
	        }  
	        con.close();
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	} */
    public static List<User> getAllRecordsApt(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from questions where sname='aptitude'");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setQname(rs.getString("qname"));  
	            u.setAop(rs.getString("aop"));  
	            u.setBop(rs.getString("bop"));
	            u.setCop(rs.getString("cop"));
	            u.setDop(rs.getString("dop"));
	            u.setRop(rs.getString("rop"));  
	            list.add(u);  
	        }  
	        con.close();
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	} 
    public static List<User> getAllRecordsJAVA(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from questions where sname='java'");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setQname(rs.getString("qname"));  
	            u.setAop(rs.getString("aop"));  
	            u.setBop(rs.getString("bop"));
	            u.setCop(rs.getString("cop"));
	            u.setDop(rs.getString("dop"));
	            u.setRop(rs.getString("rop"));  
	            list.add(u);  
	        }  
	        con.close();
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	} 
    public static List<User> getCorrectAnswersJAVA() {
        List<User> correctAnswersList = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT rop FROM questions where sname='java';")) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setRop(rs.getString("rop"));
                correctAnswersList.add(user);
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return correctAnswersList;
    }
    public static List<User> getCorrectAnswersPy() {
        List<User> correctAnswersList = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT rop FROM questions where sname='python'")) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setRop(rs.getString("rop"));
                correctAnswersList.add(user);
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return correctAnswersList;
    }
    public static List<User> getCorrectAnswersC() {
        List<User> correctAnswersList = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT rop FROM questions where sname='c'")) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setRop(rs.getString("rop"));
                correctAnswersList.add(user);
            }
            con.close();
            

        } catch (Exception e) {
            e.printStackTrace();
        }

        return correctAnswersList;
    }
    public static List<User> getCorrectAnswersDBMS() {
        List<User> correctAnswersList = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT rop FROM questions where sname='DBMS'")) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setRop(rs.getString("rop"));
                correctAnswersList.add(user);
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return correctAnswersList;
    }
    public static List<User> getCorrectAnswersApt() {
        List<User> correctAnswersList = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT rop FROM questions where sname='aptitude'")) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setRop(rs.getString("rop"));
                correctAnswersList.add(user);
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return correctAnswersList;
    }
    public static List<User> getAllStudents() {
        List<User> list = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM std");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setSname(rs.getString("sname"));
                list.add(u);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static List<User> getAllTeachers() {
        List<User> list = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM teacher");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setTname(rs.getString("tname"));
                list.add(u);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public static List<User> getAllQuestions() {
        List<User> list = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM questions");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setQname(rs.getString("qname"));
                list.add(u);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static int DeleteStudent(User u) {
    	int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from std where sname=?");
			ps.setString(1, u.getSname());
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
    	
    }
    public static int DeleteTeacher(User u) {
    	int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from teacher where tname=?");
			ps.setString(1, u.getTname());
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
    	
    }
    public static User getRecordByName(String name){  
	    User u=null; 
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from std where sname=?");  
	        ps.setString(1,name);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	             
	            u.setSname(rs.getString("sname"));  
	            u.setSpassword(rs.getString("spassword"));
	             
	        }  
	        con.close();
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
    public static List<User> getAllRecordsAptitude() {
        List<User> list = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM questions WHERE sname='aptitude'")) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setQname(rs.getString("qname"));
                u.setSubject(rs.getString("sname"));
                u.setAop(rs.getString("aop"));
                u.setBop(rs.getString("bop"));
                u.setCop(rs.getString("cop"));
                u.setDop(rs.getString("dop"));
                u.setRop(rs.getString("rop"));
                list.add(u);
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public static List<User> getAllRecordsc() {
        List<User> list = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM questions WHERE sname='c'")) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setQname(rs.getString("qname"));
                u.setSubject(rs.getString("sname"));
                u.setAop(rs.getString("aop"));
                u.setBop(rs.getString("bop"));
                u.setCop(rs.getString("cop"));
                u.setDop(rs.getString("dop"));
                u.setRop(rs.getString("rop"));
                list.add(u);
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    public static List<User> getAllRecordsDBMS() {
        List<User> list = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM questions WHERE sname='DBMS'")) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setQname(rs.getString("qname"));
                u.setSubject(rs.getString("sname"));
                u.setAop(rs.getString("aop"));
                u.setBop(rs.getString("bop"));
                u.setCop(rs.getString("cop"));
                u.setDop(rs.getString("dop"));
                u.setRop(rs.getString("rop"));
                list.add(u);
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }



    public static List<User> getAllRecordsForPython() {
        List<User> list = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM questions WHERE sname='python'")) {

            //ps.setString(1, "python");
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    User u = new User();
                    u.setQname(rs.getString("qname"));
                    u.setSubject(rs.getString("sname"));
                    u.setAop(rs.getString("aop"));
                    u.setBop(rs.getString("bop"));
                    u.setCop(rs.getString("cop"));
                    u.setDop(rs.getString("dop"));
                    u.setRop(rs.getString("rop"));
                    list.add(u);
                }
                
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            
        }

        return list;
    }
    public static int savef(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO feedback(id,training,trainer,expectations,rate,interactive,another) VALUES (?,?,?,?,?,?,?)");
            ps.setString(1,u.getId());
            ps.setString(2,u.getTraining());
            ps.setString(3,u.getTrainer());
            ps.setString(4,u.getExpectations());
            ps.setString(5,u.getRate());
            ps.setString(6,u.getInteractive());
            ps.setString(7,u.getAnother());
            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public static List<User> getAllfeedback() {
        List<User> list = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM feedback")) {
        	ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getString("id"));
                u.setTraining(rs.getString("training"));
                u.setTrainer(rs.getString("trainer"));
                u.setExpectations(rs.getString("expectations"));
                u.setRate(rs.getString("rate"));
                u.setInteractive(rs.getString("interactive"));
                u.setAnother(rs.getString("another"));
                list.add(u);

                
                
            }
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            
        }

        return list;
    }
    public static void insertResult(String subject, int totalQuestions, int correctAnswersCount, String email) {
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement("INSERT INTO result (subject, total_questions, correct_answers, sname) VALUES (?, ?, ?, ?)")) {

            ps.setString(1, subject);
            ps.setInt(2, totalQuestions);
            ps.setInt(3, correctAnswersCount);
            ps.setString(4, email);

            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



 // Adjust SQL query to include email (sname)
    public static List<User> getResultByDBMS() {
        List<User> list = new ArrayList<User>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT sname, total_questions, correct_answers FROM result WHERE subject='DBMS'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setSname(rs.getString("sname"));
                user.setTotalQuestions(rs.getInt("total_questions"));
                user.setCorrectAnswers(rs.getInt("correct_answers"));
                list.add(user);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public static List<User> getResultByPython() {
        List<User> list = new ArrayList<User>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT sname, total_questions, correct_answers FROM result WHERE subject='python'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setSname(rs.getString("sname"));
                user.setTotalQuestions(rs.getInt("total_questions"));
                user.setCorrectAnswers(rs.getInt("correct_answers"));
                list.add(user);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public static List<User> getResultByC() {
        List<User> list = new ArrayList<User>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT sname, total_questions, correct_answers FROM result WHERE subject='c'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setSname(rs.getString("sname"));
                user.setTotalQuestions(rs.getInt("total_questions"));
                user.setCorrectAnswers(rs.getInt("correct_answers"));
                list.add(user);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public static List<User> getResultByAptitude() {
        List<User> list = new ArrayList<User>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT sname, total_questions, correct_answers FROM result WHERE subject='aptitude'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setSname(rs.getString("sname"));
                user.setTotalQuestions(rs.getInt("total_questions"));
                user.setCorrectAnswers(rs.getInt("correct_answers"));
                list.add(user);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public static List<User> getAllResults() {
        List<User> list = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM result");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setSname(rs.getString("sname"));
                user.setTotalQuestions(rs.getInt("total_questions"));
                user.setCorrectAnswers(rs.getInt("correct_answers"));
                list.add(user);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static User getResultByName(String name){  
	    User u=null; 
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from result where sname=?");  
	        ps.setString(1,name);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	             
	            u.setSname(rs.getString("sname"));
                u.setTotalQuestions(rs.getInt("total_questions"));
                u.setCorrectAnswers(rs.getInt("correct_answers"));
	             
	        }  
	        con.close();
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
    public static boolean hasTakenExam(String userEmail,String examSubject ) {
    	boolean hasTakenExam=false;
    	try (Connection con=getConnection();
    		PreparedStatement ps=con.prepareStatement("SELECT COUNT(*) FROM result WHERE sname=? AND subject=?");)
    	{
    		ps.setString(1,userEmail);
    		ps.setString(2,examSubject);
    		try(ResultSet rs=ps.executeQuery()){
    			if(rs.next()) {
    				int count=rs.getInt(1);
    				hasTakenExam=(count>0);
    				System.out.println(hasTakenExam);
    			}
    		}
    		
    	}
    	catch(SQLException e) {
    		e.printStackTrace();
    		
    		
    	}
    	return hasTakenExam;
    }



    


    
}
