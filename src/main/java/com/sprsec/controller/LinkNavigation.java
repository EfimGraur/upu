package com.sprsec.controller;

import com.sprsec.model.FirstLevelForm;
import com.sprsec.service.FirstLevelFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkNavigation {

//  @Autowired
//  FirstLevelFormService firstLevelFormService;

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public ModelAndView homePage() {
    return new ModelAndView("login-form");
  }

  @RequestMapping(value = "/index", method = RequestMethod.GET)
  public ModelAndView indexPage() {
    return new ModelAndView("login-form");
  }

  @RequestMapping(value = "/sec/moderation", method = RequestMethod.GET)
  public ModelAndView moderatorPage() {
    return new ModelAndView("moderation");
  }

  @RequestMapping(value = "/admin/first", method = RequestMethod.GET)
  public ModelAndView firstAdminPage() {
    return new ModelAndView("admin-first");
  }

  @RequestMapping(value = "/admin/second", method = RequestMethod.GET)
  public ModelAndView secondAdminPage() {
    return new ModelAndView("admin-second");
  }

  //	@RequestMapping(value="/admin/pacient-form", method=RequestMethod.GET)
  //	public ModelAndView pacientForm() {
  //		return new ModelAndView("pacient-form");
  //	}

  @RequestMapping(value = "/home", method = RequestMethod.GET)
  public ModelAndView home() {
    return new ModelAndView("home");
  }

  @RequestMapping(value = "admin/firstLevelForm", method = RequestMethod.GET)
  public ModelAndView showForm() {
    return new ModelAndView("pacient-form", "firstLevelForm", new FirstLevelForm());
  }

  @RequestMapping(value = "admin/addFirstLevelForm", method = RequestMethod.POST)
  public String submit(
      @ModelAttribute("firstLevelForm") FirstLevelForm firstLevelForm,
      BindingResult result,
      ModelMap model) {
    if (result.hasErrors()) {
      return "error";
    }
    model.addAttribute("firstName", firstLevelForm.getFirstName());
    model.addAttribute("lastName", firstLevelForm.getLastName());

   // firstLevelFormService.addFistLevelForm(model);
    return "redirect:/firstLevelForm";
  }
}
