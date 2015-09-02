package org.zorian.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zorian.dao.ItemDAO;
import org.zorian.model.Item;
import org.zorian.model.User;

@Service
@Transactional
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDAO itemDAO;

	public void addItem(Item item) {
		itemDAO.addItem(item);
	}

	public void updateItem(Item item) {
		itemDAO.updateItem(item);
	}

	public Item getItem(int id) {
		return itemDAO.getItem(id);
	}

	public void deleteItem(int id) {
		itemDAO.deleteItem(id);
	}

	public List<Item> getItems() {
		return itemDAO.getItems();
	}

	public List<Item> getUserItems(User user) {
		return itemDAO.getItems();

	}

}
