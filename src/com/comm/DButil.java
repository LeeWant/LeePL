package com.comm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class DButil {

	private PreparedStatement state;
	private String url;
	private String user;
	private String password;
	private String classdriver;
	
	public DButil(){
		url = "jdbc:mysql://localhost/plant?useUnicode=true&characterEncoding=utf-8&useSSL=false";
		user = "";
		password = "";
		classdriver = "com.mysql.jdbc.Driver";
	}

	/**
	 * 根据注册信息
	 * 数据库连接信息
	 * 获取数据库的链接
	 * @return
	 * @throws Exception
	 */
	public Connection getConnection() throws Exception {
		Class.forName(classdriver);      
		Connection conn = DriverManager.getConnection(url, user, password);
		System.out.println("数据库连接成功");
		return conn;
	}
	/**
	 * 关闭数据库链接
	 * @param conn
	 * @throws SQLException
	 */
	public void close(Connection conn) throws SQLException {
		if(state != null)state.close();
		conn.close();
		System.out.println("数据库使用关闭成功");
	}
	
	/**
	 * 执行查询语句，对比数据库中有无此数据，返回值为布尔型
	 * @param sql
	 * @param parelist
	 * @param conn
	 * @return
	 * @throws SQLException
	 */
	public boolean excute(String sql, List<Object> parelist, Connection conn) throws SQLException {
		state = conn.prepareStatement(sql);
		for(int i = 0 ; i < parelist.size() ; i++){
			state.setObject(i+1, parelist.get(i));//设置占位符
		}
		int resnum = state.executeUpdate();
		
		if(resnum > 0) return true;
		else return false;
	}
	
	/**
	 * 执行SQL搜索，返回值为list，搜索出的数据
	 * @param sql sql语句
	 * @param parelist 存放用于取代占位符的名称集合
	 * @param conn 
	 * @return
	 * @throws SQLException
	 */
	public List excutequery(String sql, List parelist, Connection conn) throws SQLException {
		List list = new ArrayList();  //返回是查询结果
		state = conn.prepareStatement(sql);    //sql的预处理
		if(parelist != null){
			for(int i = 0 ; i < parelist.size() ; i++){
				state.setObject(i+1, parelist.get(i));   //设置占位符的值 
			}
		}
		//控制台查看sql语句是否正确
//		System.out.println("1res.size()="+list.size());
//		System.out.println("sql="+sql);
//		System.out.println("parelist="+parelist);
		ResultSet set = state.executeQuery();  //执行sql查询
		ResultSetMetaData meta = state.getMetaData();  //获取当前sql语句的字段名集合
		while(set.next()){
			//遍历查询结果， list<map>
			Map map = new HashMap();
			for(int i = 1 ; i <= meta.getColumnCount(); i++ ){
				String key = meta.getColumnName(i);
				map.put(key, set.getString(key));
			}	
			list.add(map);
		}
		System.out.println("数据库查询使用成功!");
		return list;
	}
	public String queryImg(String sql,List parelist,Connection conn) throws SQLException {
		String str="";
		state = conn.prepareStatement(sql);    //sql的预处理
		if(parelist != null){
			for(int i = 0 ; i < parelist.size() ; i++){
				state.setObject(i+1, parelist.get(i));   //设置占位符的值 
			}
		}
		ResultSet set = state.executeQuery();  //执行sql查询
		ResultSetMetaData meta = state.getMetaData();  //获取当前sql语句的字段名集合
		while(set.next()){
			String key = meta.getColumnName(1);
			str=set.getString(key);
		}
		
		return str;
	}
}
