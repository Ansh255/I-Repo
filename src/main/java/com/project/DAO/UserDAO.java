package com.project.DAO;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.UserVO;

@Repository
@Transactional
public class UserDAO {
	
	@Autowired SessionFactory sessionFactory;
	
	public void userinsert(UserVO uservo){
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(uservo);
	}
	
	

}
