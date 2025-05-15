package com.midproject.tripin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.midproject.tripin.service.PlaceService;

@Controller
public class PlaceViewContorller {
	@Autowired
	private PlaceService placeService;
	
	@GetMapping("place_list")
	public String placeList(Model m) {
		
		m.addAttribute("placeList", placeService.getAllPlaces());
		
		return "place_list";
		
	}
}
