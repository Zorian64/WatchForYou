package org.zorian.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.zorian.model.Item;
import org.zorian.model.User;
import org.zorian.model.enums.State;

@RequestMapping("/cart")
@Controller
public class RestService {

	@Autowired
	private UserService userService;
	@Autowired
	private WatchService watchService;
	@Autowired
	private ItemService itemService;
	
	@RequestMapping(value = "/deleteItem", method = RequestMethod.GET)
	public @ResponseBody void deleteItem(@RequestParam(value = "itemID") Integer itemID) {
		System.out.println(itemService.getItem(itemID));
		itemService.deleteItem(itemID);
	}
	@RequestMapping(value = "/addItem", method = RequestMethod.GET)
	public @ResponseBody void addItem(@RequestParam(value = "watchID") Integer watchID) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		Integer userID = userService.getUser(userName).getId();
		Item item = new Item();
		item.setUser(userService.getUser(userID));
		item.setWatch(watchService.getWatch(watchID));
		item.setState(State.ADD_TO_CART);
		itemService.addItem(item);
	}

	@RequestMapping(value = "/adminCart", method = RequestMethod.GET)
	public ModelAndView adminListOfItems(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("/shopping_cart");
		List<Item> items = itemService.getItems();
		modelAndView.addObject("items", items);
		return modelAndView;
	}

	@RequestMapping(value = "/userCart", method = RequestMethod.GET)
	public ModelAndView userListOfItems() {
		ModelAndView modelAndView = new ModelAndView("/cart");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		User user = userService.getUser(userName);
		List<Item> items = itemService.getUserItems(user);
		modelAndView.addObject("items", items);
		return modelAndView;
	}

	
}

