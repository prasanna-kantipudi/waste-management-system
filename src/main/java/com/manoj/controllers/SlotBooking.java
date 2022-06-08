package com.manoj.controllers;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.manoj.beans.Booking;
import com.manoj.beans.User;
import com.manoj.repos.SlotBookingRepo;
import com.manoj.utils.FileUploadUtil;


@Controller
public class SlotBooking {
	
	@Autowired
	private SlotBookingRepo slotbookingrepo;
	@GetMapping("/slotbooking")
	public String slotBooking(ModelMap model) {
		User user =(User) model.getAttribute("user");
		System.out.println(user);
		return "slotbooking";
	}
	
	
	@PostMapping("/slotbooking")
	public String slotbooking(@RequestParam("image") MultipartFile multipartFile, @ModelAttribute("newslot") Booking booking,BindingResult result,Model model) throws IOException {
		if(result.hasErrors()) {
			model.addAttribute("msg","Please try again");
			return "slotbooking";
		}
		// Image handling
		// Getting the name of the file and storing the name.
		 String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		 booking.setPhotos(fileName);
	     
	     Booking savedBooking = slotbookingrepo.save(booking);
		
		// Uploading the image file into filesystem.
		
		String uploadDir = "src/main/resources/static/images/" + savedBooking.getBookingId();
        FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
		return "slotbooking";
	}
}
