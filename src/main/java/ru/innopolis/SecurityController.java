package ru.innopolis;
/**
 * Created by Andrey on 07.11.2016.
 */

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecurityController {
    private static final Logger logger = LoggerFactory.getLogger(SecurityController.class);

    @RequestMapping(value = "/user")
    public String userPage() {
        logger.info("User enter");
        return "user";
    }

    @RequestMapping(value = "/admin")
    public String adminPage() {
        logger.info("Admin enter");
        return "admin";
    }

    @RequestMapping(value ="/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error) {
        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username or password!");
        }
        model.setViewName("login");
        return model;
    }
}
