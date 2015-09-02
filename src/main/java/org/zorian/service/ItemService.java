package org.zorian.service;

import java.util.List;

import org.zorian.model.Item;
import org.zorian.model.User;


public interface ItemService {
	public void addItem(Item item);

	public void updateItem(Item item);

	public Item getItem(int id);

	public void deleteItem(int id);

	public List<Item> getItems();
	
	public List<Item> getUserItems(User user);
}
