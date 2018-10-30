package com.mvcsecurityjpa.t2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mvcsecurityjpa.t2.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
	 Role findByRoleName(String role);
}
