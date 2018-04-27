package com.jnf.wms.main.web;

import com.jnf.wms.main.service.MainService;
import com.jnf.wms.main.service.MainVO;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;


@ContextConfiguration(locations = "classpath:/spring/context-common.xml")
@Controller
public class MainController {
    private Logger logger = Logger.getLogger(this.getClass());


    @Resource(name = "MainService")
    private  MainService mainService;


    @RequestMapping(value = "/main/main.do", method = {RequestMethod.GET, RequestMethod.POST} )
    public ModelAndView main(@ModelAttribute MainVO mainVO) {
        ModelAndView mav = new ModelAndView("/main/main");


        try{
            System.out.println("여기는 일단 지나가게 되어있음");

            List mainList = mainService.selectMainList(mainVO);

            mav.addObject("mainList", mainList);


        }catch (Exception e){
            logger.error("{}", e);
        }

        return mav;
    }
}
