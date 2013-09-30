package org.springframework.boot.sample.jsp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.dandelion.datatables.core.mock.Mock;

@Controller
public class WelcomeController {

	@RequestMapping("/")
	public ModelAndView welcome() {
		  ModelAndView mav = new ModelAndView();
		  mav.addObject("persons", Mock.persons);
		  mav.setViewName("welcome");
		  return mav;
	}
}