package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by kuzin on 08.03.2016.
 */
@Controller
public class BaseController {

    @Autowired
    protected HttpServletRequest request;
}
