package com.manoj.repos;

import org.springframework.data.repository.CrudRepository;

import com.manoj.beans.User;

public interface UserRepository extends CrudRepository<User,Integer>{
	public User findByUsername(String s);
	public User findById(int id);
}
