package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.TreeMap;

public class DogDAO {
	
	private Connection connectDB(){
		Connection conn = null;
		try {
			/*Context context= new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/oraDB");//context.xml으로 연동
			System.out.println(ds);
			conn = ds.getConnection();*/
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","palette","palette");
				
				}
		catch (Exception e) {
			System.out.println("connect에서 예외발생!!!!!!!---" + e);
		} finally {
			try {
			} catch (Exception e) {
				e.printStackTrace();
				}
			}
		return conn;//맨 마지막에 작성!
		}
	
	public int[][] dogVector() {
		PreparedStatement stmt = null;
		Connection iconn=connectDB();
		ResultSet rs = null;
		try {
			int[][] no = new int[22][24];
			for(int i=1;i<=22;i++){				
				int id=i;
				String sql="select a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x from dogVector where id=?";
				stmt = iconn.prepareStatement(sql);
				stmt.setInt(1, id);
				rs=stmt.executeQuery();			
				
				if (rs.next()) {
					for(int j=1; j<=24; j++) {
					no[i-1][j-1] = rs.getInt(j);
					}
				}
			}
			return no;	
		} catch (Exception e) {
			System.out.println("DogVector에서 에러발생!!!!!!!---" + e);
		} finally {
			try {
				rs.close();
				stmt.close();
				iconn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	
	
	public DogInfoVO dogInfo(int id1) {
		PreparedStatement pstmt = null;
		Connection iconn=connectDB();
		ResultSet rs = null;
		DogInfoVO no = null;
		
		try {
			String sql="select name,ename,content,img from dog where id=? ";
			pstmt = iconn.prepareStatement(sql);
			pstmt.setInt(1, id1);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				no = new DogInfoVO();
				no.setName(rs.getString(1));
				no.setEname(rs.getString(2));
				no.setContent(rs.getString(3));
				no.setImg(rs.getString(4));
			}
		} catch (Exception e) {
			System.out.println("DogInfo에서 에러발생!!!!!!!---" + e);
		} finally {
			try {
				rs.close();
				pstmt.close();
				iconn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return no;
	}
	
	public double[] calculateEuclidean(int[] array1, int[][] dv){
		double[] sum= new double[22];
		double[] result = new double[22];
		for (int i=0; i<22;i++){
			for(int j=0; j<22; j++ ) {
				sum[i]=sum[j]+Math.pow((array1[j]-dv[i][j]), 2.00);
				}
			result[i] = (Math.sqrt(sum[i]));
		}
		return result;
	}
	
	
	public Integer[] topThree(double[] ecd){
		TreeMap<Double, Integer> a=new TreeMap<Double, Integer>();
		//double[] ecd={10.45,1.56,12.89,3.29,0.1};
		for(int i=0;i<ecd.length;i++){
			a.put(ecd[i],i);			
		}
		Collection<Integer> k=a.values();
		Integer[] m = (Integer[])(k.toArray(new Integer[k.size()]));
		Integer[] topThree=new Integer[3];
		topThree[0]=m[0];
		topThree[1]=m[1];
		topThree[2]=m[2];
		return topThree;
		
		}

	public ArrayList<LostDogVO> LostDogList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select 지역,성별,견종,작성일  from lostdog";
		ArrayList<LostDogVO> result = null;
		try {
			conn = connectDB();
			pstmt = conn.prepareStatement(sql);		
			rs = pstmt.executeQuery();
			result = new ArrayList<LostDogVO>();
			while (rs.next()) {
				LostDogVO lvo = new LostDogVO();
				lvo.setLocation(rs.getString(1));
				lvo.setSex(rs.getString(2));
				lvo.setType(rs.getString(3).replace(".", ""));
				lvo.setDate(rs.getString(4));
				result.add(lvo);
			}
		} catch (Exception e) {
			System.out.println("예외발생!!!!!!!---" + e);
		} finally {
			try {
				conn.close();
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public ArrayList<LostDogVO> location(String loc) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select 지역,성별,견종,작성일  from lostdog where 지역=?";
		ArrayList<LostDogVO> result = null;
		try {
			conn = connectDB();
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, loc);
			rs = pstmt.executeQuery();
			result = new ArrayList<LostDogVO>();
			while (rs.next()) {
				LostDogVO lvo = new LostDogVO();
				lvo.setLocation(rs.getString(1));
				lvo.setSex(rs.getString(2));
				lvo.setType(rs.getString(3).replace(".", ""));
				lvo.setDate(rs.getString(4));
				result.add(lvo);
			}
		} catch (Exception e) {
			System.out.println("예외발생!!!!!!!---" + e);
		} finally {
			try {
				conn.close();
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public ArrayList<LostDogVO> Sex(String sex) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select 지역,성별,견종,작성일  from lostdog where 성별=?";
		ArrayList<LostDogVO> result = null;
		try {
			conn = connectDB();
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, sex);
			rs = pstmt.executeQuery();
			result = new ArrayList<LostDogVO>();
			while (rs.next()) {
				LostDogVO lvo = new LostDogVO();
				lvo.setLocation(rs.getString(1));
				lvo.setSex(rs.getString(2));
				lvo.setType(rs.getString(3).replace(".", ""));
				lvo.setDate(rs.getString(4));
				result.add(lvo);
			}
		} catch (Exception e) {
			System.out.println("예외발생!!!!!!!---" + e);
		} finally {
			try {
				conn.close();
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public ArrayList<LostDogVO> type(String type) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select 지역,성별,견종,작성일  from lostdog where 견종=?";
		ArrayList<LostDogVO> result = null;
		try {
			conn = connectDB();
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, type);
			rs = pstmt.executeQuery();
			result = new ArrayList<LostDogVO>();
			while (rs.next()) {
				LostDogVO lvo = new LostDogVO();
				lvo.setLocation(rs.getString(1));
				lvo.setSex(rs.getString(2));
				lvo.setType(rs.getString(3).replace(".", ""));
				lvo.setDate(rs.getString(4));
				result.add(lvo);
			}
		} catch (Exception e) {
			System.out.println("예외발생!!!!!!!---" + e);
		} finally {
			try {
				conn.close();
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

}
