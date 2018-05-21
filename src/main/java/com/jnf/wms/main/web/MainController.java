package com.jnf.wms.main.web;

import com.jnf.wms.main.service.MainVO;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;





@ContextConfiguration(locations = "classpath:/spring/context-common.xml")
@Controller
public class MainController {

    @SuppressWarnings("UnnecessaryLocalVariable")
    @RequestMapping(value = "/main/main.do", method = {RequestMethod.GET, RequestMethod.POST} )
    public ModelAndView main(@ModelAttribute MainVO mainVO) {
        ModelAndView mav = new ModelAndView("/main/main");
        return mav;

    }

}
