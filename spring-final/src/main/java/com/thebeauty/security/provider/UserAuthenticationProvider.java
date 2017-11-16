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
			throw new UsernameNotFoundException(authentication.getName());
		}
		
		/* 유저가 입력한 비밀번호 , DB로 부터 받아온 사용자의 암호화된 비밀번호 */
		if(!passwordEncoder.matches((String)authentication.getCredentials() , user.getUserPassword())) {
			System.out.println((String)authentication.getCredentials() + "  :  " + user.getUserPassword());
			System.out.println("비밀번호가 일치하지 않습니다");
			throw new BadCredentialsException("비밀번호가 일치하지 않습니다.");
		}
		
		/* 사용자로부터 받아온 권한을 목록에 저장 */
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority((user.getRatingType())));
		
 		
		return new UsernamePasswordAuthenticationToken(user, null, authorities);
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}
	
	/* 비밀번호 일치여부 확인 메소드 */
	private boolean matchPassword(String password , Object credentials) {
		return password.equals(credentials);
	}
}
