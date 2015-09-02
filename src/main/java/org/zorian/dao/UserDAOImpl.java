package org.zorian.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.zorian.model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	private Session currentSession() {
		return sessionFactory.getCurrentSession();
	}

	public User getUser(String login) {
		List<User> userList = new ArrayList<User>();
		Query query = currentSession().createQuery("from User u where u.login=:login");
		query.setParameter("login", login);

		userList = query.list();
		if (userList.size() > 0)
			return userList.get(0);
		else
			return null;
	}

	@Override
	public void addUser(User user) {
		currentSession().save(user);
	}

	@Override
	public void updateUser(User user) {
		User userToUpdate = getUser(user.getId());
		userToUpdate.setLogin(user.getLogin());
		userToUpdate.setPassword(user.getPassword());
		userToUpdate.setFirstname(user.getFirstname());
		userToUpdate.setSecondname(user.getSecondname());
		userToUpdate.setEmail(user.getEmail());
		userToUpdate.setRole(user.getRole());
		currentSession().update(userToUpdate);

	}

	@Override
	public User getUser(int id) {
		User user = (User) currentSession().get(User.class, id);
		return user;
	}

	@Override
	public void deleteUser(int id) {
		User user = getUser(id);
		if (user != null)
			currentSession().delete(user);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return currentSession().createQuery("from User").list();
	}

}
