package com.sprsec.model;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="roles")
public class Role {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String role;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinTable(name="user_roles",
			 joinColumns = {@JoinColumn(name="user_id", referencedColumnName = "id")},
	inverseJoinColumns = {@JoinColumn(name="role_id", referencedColumnName = "id")}
	)
	private User user;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
