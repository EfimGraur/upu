package com.sprsec.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="users")
public class User {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String login;
	
	private String password;
	
	@OneToMany(cascade=CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "user")
	private List<Role> role;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Role> getRole() {
		return role;
	}

	public void setRole(List<Role> role) {
		this.role = role;
	}	

}
