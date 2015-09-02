package org.zorian.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.zorian.model.Item;
import org.zorian.model.User;

@Repository
public class ItemDAOImpl implements ItemDAO {
	@Autowired
	private SessionFactory sessionFactory;

	private Session currentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addItem(Item item) {
		currentSession().save(item);
	}

	@Override
	public void updateItem(Item item) {
		Item itemToUpdate = getItem(item.getId());
		itemToUpdate.setUser(item.getUser());
		itemToUpdate.setWatch(item.getWatch());
		itemToUpdate.setState(item.getState());
		currentSession().update(itemToUpdate);

	}

	@Override
	public Item getItem(int id) {
		Item item = (Item) currentSession().get(Item.class, id);
		return item;
	}

	@Override
	public void deleteItem(int id) {
		Item item = getItem(id);
		if (item != null)
			currentSession().delete(item);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Item> getItems() {
		return currentSession().createQuery("from Item").list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Item> getUserItems(User user) {
		return currentSession().createQuery("from Item").list();

	}

}
