package org.zorian.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.zorian.model.Role;
import org.zorian.model.User;
import org.zorian.service.RoleService;
import org.zorian.service.UserService;

@Controller
@Transactional
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;

	@RequestMapping(value = "/openAddPage", method = RequestMethod.GET)
	public ModelAndView addUserPage() {
		ModelAndView modelAndView = new ModelAndView("/user/add");

		List<Role> rolesList = new ArrayList<Role>();
		rolesList = roleService.getRoles();

		modelAndView.addObject("rolesList", rolesList);
		modelAndView.addObject("user", new User());

		return modelAndView;
	}

	@RequestMapping(value = "/saveAdd", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user") User user, @ModelAttribute Role role)
			throws SerialException, SQLException, IOException {

		ModelAndView modelAndView = new ModelAndView("/user/list");
		System.out.println(role);
		System.out.println(role.getRoleName());
		if (role.getRoleName() == "admin") {
			user.setRole(roleService.getRole(1));
		} else {
			user.setRole(roleService.getRole(2));
		}

		userService.addUser(user);

		String message = "User was successfully added.";
		modelAndView.addObject("message", message);

		return modelAndView;
	}

	@RequestMapping(value = "/list")
	public ModelAndView listOfUsers() {
		ModelAndView modelAndView = new ModelAndView("/user/list");

		List<User> users = userService.getUsers();
		modelAndView.addObject("users", users);

		return modelAndView;
	}

	@RequestMapping(value = "/openEditPage/{id}", method = RequestMethod.GET)
	public ModelAndView editUserPage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("/user/edit");
		User user = userService.getUser(id);

		modelAndView.addObject("user", user);
		return modelAndView;
	}

	@RequestMapping(value = "/saveEdit/{id}", method = RequestMethod.POST)
	public ModelAndView edditingUser(@ModelAttribute User user, @PathVariable Integer id)
			throws SerialException, SQLException, IOException {

		ModelAndView modelAndView = new ModelAndView("/user/list");

		userService.updateUser(user);

		String message = "User was successfully edited.";
		modelAndView.addObject("message", message);

		return modelAndView;
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteUser(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("/user/list");
		userService.deleteUser(id);
		String message = "User was successfully deleted.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

}
