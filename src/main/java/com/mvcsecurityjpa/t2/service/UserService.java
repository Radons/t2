package com.mvcsecurityjpa.t2.service;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mvcsecurityjpa.t2.model.Role;
import com.mvcsecurityjpa.t2.model.User;
import com.mvcsecurityjpa.t2.repository.RoleRepository;
import com.mvcsecurityjpa.t2.repository.UserRepository;


@Service
@Cacheable("users")
public class UserService {
	//load repository
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	//login
	
	//find all users
	public List<User> findAll(){
		return userRepository.findAll();
	}
	//save user
	@Transactional
	public void save(User user) {
		
		String p=user.getUserPwd();
		System.out.println("begin");
		System.out.println(bCryptPasswordEncoder.toString());
		String e=bCryptPasswordEncoder.encode(p);
		System.out.println("encode done"+e);
		user.setUserPwd(e);
		Role userRole = roleRepository.findByRoleName("admin");
		user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
		userRepository.save(user);
	}
	//
	public User findUserByName(String name) {
		return	userRepository.findByUserName(name);
	}
}
