package org.zorian.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.zorian.model.Watch;
import org.zorian.service.WatchService;

@Controller
@Transactional
@RequestMapping(value = "/watch")
public class WatchController {

	@Autowired
	private WatchService watchService;

	@RequestMapping(value = "/openAddPage", method = RequestMethod.GET)
	public ModelAndView openAddPage() {
		ModelAndView modelAndView = new ModelAndView("/watch/add");
		modelAndView.addObject("watch", new Watch());
		return modelAndView;
	}

	@RequestMapping(value = "/saveAdd", method = RequestMethod.POST)
	public ModelAndView saveWatch(@ModelAttribute("watch") Watch watch, @RequestParam("file") MultipartFile file)
			throws SerialException, SQLException, IOException {
		ModelAndView modelAndView = new ModelAndView("/watch/list");
		System.out.println("Brend:" + watch.getBrend());
		System.out.println("Model:" + watch.getModel());
		System.out.println("Color:" + watch.getColor());
		System.out.println("Price:" + watch.getPrice());
		System.out.println("File:" + file.getOriginalFilename());
		Blob blob = new javax.sql.rowset.serial.SerialBlob(IOUtils.toByteArray(file.getInputStream()));
		watch.setPicture(blob);
		watch.setFileName(file.getOriginalFilename().toString());
		watchService.addWatch(watch);
		String message = "Watch was successfully added.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView listOfWatches(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("/watch/list");
		List<Watch> watches = watchService.getWatches();
		modelAndView.addObject("watches", watches);
		System.out.println("is role:" + request.isUserInRole("ROLE_ADMIN"));
		return modelAndView;
	}

	@RequestMapping(value = "/watchList", method = RequestMethod.GET)
	public ModelAndView infoWatch(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("/watch/watchList");
		List<Watch> watches = watchService.getWatches();
		modelAndView.addObject("watches", watches);
		System.out.println("Admin role:" + request.isUserInRole("ROLE_ADMIN"));
		System.out.println("USER role:" + request.isUserInRole("ROLE_USER"));
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/watchListPage1", method = RequestMethod.GET)
	public ModelAndView Watch(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("/page1");
		List<Watch> watches = watchService.getWatches();
		modelAndView.addObject("watches", watches);
		System.out.println("Admin role:" + request.isUserInRole("ROLE_ADMIN"));
		System.out.println("USER role:" + request.isUserInRole("ROLE_USER"));
		return modelAndView;
	}
	
	

	@RequestMapping(value = "/openEditPage/{id}", method = RequestMethod.GET)
	public ModelAndView editWatchPage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("/watch/edit");
		Watch watch = watchService.getWatch(id);
		modelAndView.addObject("watch", watch);
		return modelAndView;
	}

	@RequestMapping(value = "/saveEdit/{id}", method = RequestMethod.POST)
	public ModelAndView saveEditWatch(@ModelAttribute Watch watch, @PathVariable Integer id,
			@RequestParam("file") MultipartFile file) throws SerialException, SQLException, IOException {
		ModelAndView modelAndView = new ModelAndView("/watch/list");
		Blob blob = new javax.sql.rowset.serial.SerialBlob(IOUtils.toByteArray(file.getInputStream()));
		watch.setPicture(blob);
		watch.setFileName(file.getOriginalFilename().toString());
		watchService.updateWatch(watch);
		String message = "Watch was successfully edited.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteWatch(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("/watch/list");
		watchService.deleteWatch(id);
		String message = "Watch was successfully deleted.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

	@RequestMapping("/download/{id}")
	public String download(@PathVariable Integer id, HttpServletResponse response) {
		Watch watch = watchService.getWatch(id);
		try {
			response.setHeader("Content-Disposition", "inline;filename=\"" + watch.getFileName() + "\"");
			OutputStream out = response.getOutputStream();
			IOUtils.copy(watch.getPicture().getBinaryStream(), out);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}