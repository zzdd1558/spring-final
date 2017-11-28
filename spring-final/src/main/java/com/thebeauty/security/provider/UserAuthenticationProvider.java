package com.thebeauty.security.provider;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.thebeauty.customException.PermissionDeniedException;
import com.thebeauty.model.dao.UserDAO;
import com.thebeauty.model.domain.UserDTO;

@Service
public class UserAuthenticationProvider implements AuthenticationProvider{
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		System.out.println("provider");
		if (!supports(authentication.getClass())) {
			return null;
		}
		
		/* authentication을 지원하는 타입으로 변환 */
		/*UsernamePasswordAuthenticationToken authToken = (UsernamePasswordAuthenticationToken)authentication;*/

		/* DB로부터 User의 정보를 가져옴 */
		UserDTO user = userDAO.getUserInfo(authentication.getName());
		System.out.println("사용자 정보 : " + user);
		
		/* 사용자 정보를 조회한후 사용자 존재여부를 확인  */
		if(user == null) {
			/** 아이디가 없을경우 error페이지로 넘겨줘야함 */
			System.out.println("아이디가 존재하지 않습니다.");
			throw new UsernameNotFoundException("notFoundUser");
			
		}
		
		/* 유저가 입력한 비밀번호 , DB로 부터 받아온 사용자의 암호화된 비밀번호 */
		if(!passwordEncoder.matches((String)authentication.getCredentials() , user.getUserPassword())) {
			/** 비밀번호가 없을경우 넘겨줘야함. */
			System.out.println("비밀번호가 일치하지 않습니다");
			throw new BadCredentialsException("notMatchPassword");
		}
		
		/* 권한이 없거나 'N' or 'n'일경우 */
		System.out.println(user.getRatingType());
		if(user.getRatingType() == null || user.getRatingType().equalsIgnoreCase("N")) {
			System.out.println("회원승인이 필요합니다");
			throw new PermissionDeniedException("permissionDenined");
		}
		
		/* 사용자로부터 받아온 권한을 목록에 저장 */
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority((user.getRatingType())));
		System.out.println(authorities);
		
 		
		return new UsernamePasswordAuthenticationToken(user, null, authorities);
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}
}
