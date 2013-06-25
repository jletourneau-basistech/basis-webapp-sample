package com.basistech.basis.webapp.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import com.basistech.basis.webapp.security.TokenStore;


@Controller
@RequestMapping("/")
public class BaseController {


    @Autowired
    TokenStore tokenStore;



    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/validate",method = RequestMethod.GET)
    public String validate(@RequestParam("auth_token") String auth_token,
                        @RequestParam("uid") String userId,
                        ModelMap modelMap) {

        boolean isValidAuthToken = tokenStore.getTokenForUserId(userId).equals(auth_token);
        modelMap.put("isValid",isValidAuthToken);
        return "validate";
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/token",method = RequestMethod.GET)
    public String token(@RequestParam("uid") String userId,
                           ModelMap modelMap) {

        modelMap.put("token",tokenStore.getTokenForUserId(userId));
        return "token";
    }

    @RequestMapping(value="/welcome", method = RequestMethod.GET)
    public String welcome(ModelMap model) {

        model.addAttribute("message", "Maven Web Project + Spring 3 MVC - welcome()");

        //Spring uses InternalResourceViewResolver and return back index.jsp
        return "index";

    }

    @RequestMapping(value="/welcome/{name}", method = RequestMethod.GET)
    public String welcomeName(@PathVariable String name, ModelMap model) {

        model.addAttribute("message", "Maven Web Project + Spring 3 MVC - " + name);
        return "index";

    }

}