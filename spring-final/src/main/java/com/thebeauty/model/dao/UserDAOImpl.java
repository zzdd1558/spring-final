package com.thebeauty.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thebeauty.model.domain.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SqlSession sqlSession;
	
	/** 회원가입 */
	@Override
	public int userJoin(UserDTO user) {
		return sqlSession.insert("userMapper.insertUser", user);
	}
	
	/** maxIdx 가져오기 */
	@Override
	public int getUserMaxIdx() {
		String idx = sqlSession.selectOne("userMapper.userMaxIdx") ;
		return idx == null ? 0 : Integer.parseInt(idx);
	}
	
	/** 회원 정보 가져오기*/
	@Override
	public UserDTO getUserInfo(String userId) {
		return sqlSession.selectOne("userMapper.selectUserById", userId);
	}

	/** 회원 권한 승인으로인한 Rating 변경*/
	@Override
	public int userPermissionUpdate(String userId) {
		return sqlSession.update("userMapper.userPermissionUpdate", userId);
	}
	
	/** 사용자입력값으로 회원정보 가져오기 */
	@Override
	public UserDTO getUserId(UserDTO user) {
		UserDTO dto=sqlSession.selectOne("userMapper.selectIdAndKey", user);
		return dto;
	}

	/** 비밀번호를 찾고자 하는 user가 존재하는지 */
	@Override
	public UserDTO findPassword(UserDTO user) {
		UserDTO dto = sqlSession.selectOne("userMapper.findPassword",user);
		return dto == null ? null : dto;
	}

	 /** 비밀번호 변경*/
	@Override
	public int changePassword(UserDTO user) {
		int check = sqlSession.update("userMapper.changePassword",user);
		return check;
	}

	
	/** 모든 회원 가져오기*/
	@Override
	public List<UserDTO> userSearchAll() {
		return sqlSession.selectList("userMapper.userSearchAll");
	
	}
		
	/** user이름 가져오기*/
	@Override
	public String userNameSelect(int userKey) {
		return sqlSession.selectOne("userMapper.userNameSelect", userKey);
	}

	/** 고객 정보 페이징해서 가져오기*/
	@Override
	public List<UserDTO> listAll(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
	    // BETWEEN #{start}, #{end}에 입력될 값을 맵에 
	    map.put("start", start);
	    map.put("end", end);
		return sqlSession.selectList("userMapper.listAll", map);
	}

	/** 고객 정보 회원번호로 가져오기*/
	@Override
	public UserDTO getUserDetail(int userKey) {
		return sqlSession.selectOne("userMapper.selectUserByUserkey", userKey);
	}

	/** 회원번호로 고객정보 수정하기*/
	@Override
	public int updateUser(UserDTO user) {
		return sqlSession.update("userMapper.updateUserInfo", user);
	}

	/** 회원번호로 고객정보 삭제하기*/
	@Override
	public int deleteUser(UserDTO user) {
		return sqlSession.delete("userMapper.deleteUser", user);
	}
	
}
