package com.sprsec.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.sprsec.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sprsec.dao.UserDAO;

@Service
@Transactional(readOnly=true)
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserDAO userDAO;	

	public UserDetails loadUserByUsername(String login)
			throws UsernameNotFoundException {
		
		com.sprsec.model.User domainUser = userDAO.getUser(login);
		
		boolean enabled = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;

		return new User(
				domainUser.getLogin(), 
				domainUser.getPassword(), 
				enabled, 
				accountNonExpired, 
				credentialsNonExpired, 
				accountNonLocked,
				getGrantedAuthorities(domainUser.getRole())
		);
	}
	
	private List<GrantedAuthority> getGrantedAuthorities(List<Role> roles) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for (Role role : roles) {
			authorities.add(new SimpleGrantedAuthority("ROLE_"+role.getRole()));
		}
		return authorities;
	}

}
