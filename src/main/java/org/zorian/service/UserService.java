package org.zorian.service;

import java.util.List;

import org.zorian.model.User;

public interface UserService {

	public User getUser(String login);

	public void addUser(User user);

	public void updateUser(User user);

	public User getUser(int id);

	public void deleteUser(int id);

	public List<User> getUsers();
}
