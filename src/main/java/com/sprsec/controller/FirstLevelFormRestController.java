//package com.sprsec.controller;
//
//import com.sprsec.model.FirstLevelForm;
//import com.sprsec.service.FirstLevelFormService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.awt.print.Book;
//
//
//@RestController
//@RequestMapping("books-rest")
//public class SimpleBookRestController {
//
//    @Autowired
//    FirstLevelFormService firstLevelFormService;
//
//    @GetMapping("/panelData", produces = "application/json")
//    public FirstLevelForm getFirstLevelForm(@PathVariable int id) {
//        return getPanelData();
//    }
//
//    private FirstLevelForm getPanelData() {
//        return firstLevelFormService.getPanelInfo();
//    }
//}