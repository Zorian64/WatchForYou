package org.zorian.service;

import org.springframework.transaction.annotation.Transactional;
import org.zorian.dao.UserDAO;
import org.zorian.model.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	public User getUser(String login) {
		return userDAO.getUser(login);
	}

	@Override
	public void addUser(User user) {
		userDAO.addUser(user);

	}

	@Override
	public void updateUser(User user) {
		userDAO.updateUser(user);

	}

	@Override
	public User getUser(int id) {
		return userDAO.getUser(id);

	}

	@Override
	public void deleteUser(int id) {
		userDAO.deleteUser(id);
	}

	@Override
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

}
