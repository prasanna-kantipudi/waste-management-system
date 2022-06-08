package com.manoj.repos;

import org.springframework.data.repository.CrudRepository;

import com.manoj.beans.ActiveUser;

public interface ActiveUserRepo extends CrudRepository<ActiveUser,Integer>{
	public ActiveUser findFirstByOrderByIdDesc();
}
