package user.dao;

import java.io.IOException;
import java.io.Reader;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import user.bean.UserDTO;


public class UserDAO {
	private static UserDAO instance;
	private SqlSessionFactory sqlSessionFactory;

	

	
	public static UserDAO getInstance() {
		if(instance==null) {
			synchronized (UserDAO.class) {
				instance = new UserDAO();
			}
		}
		return instance;
	}
	
	
	
	public UserDAO() {
		
		
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}
	
	
	public int write(UserDTO userDTO) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int su= sqlSession.insert("userSQL.write",userDTO);
		sqlSession.commit();
		sqlSession.close();
		return su;
	}
	


	
	
	public UserDTO login(String id, String pwd) {
		
		Map<String,String> map = new HashMap<String,String>();
				
		map.put("id", id);
		map.put("pwd", pwd);
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserDTO userDTO = sqlSession.selectOne("userSQL.login",map);
		
	  //sqlSession.commit();
		sqlSession.close();
			return userDTO;
	}
	
	
	
	
	
	
	
	
	public boolean isExistId(String id){
		
		boolean exist = false;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserDTO userDTO = sqlSession.selectOne("userSQL.isExistId", id);
		if(userDTO != null) exist = true;
		sqlSession.close();
		return exist;
	}
	
	
	

	
	
}

	