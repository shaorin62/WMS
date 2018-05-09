package com.jnf.wms.main.web;

import com.jnf.wms.main.service.MainService;
import com.jnf.wms.main.service.MainVO;
import com.jnf.wms.main.service.TableVO;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@ContextConfiguration(locations = "classpath:/spring/context-common.xml")
@Controller
public class MainController {
    private Logger logger = Logger.getLogger(this.getClass());


    @Resource(name = "MainService")
    private  MainService mainService;

    @SuppressWarnings("UnnecessaryLocalVariable")
    @RequestMapping(value = "/main/main.do", method = {RequestMethod.GET, RequestMethod.POST} )
    public ModelAndView main(@ModelAttribute MainVO mainVO) {
        ModelAndView mav = new ModelAndView("/main/main");
        return mav;

    }

    @RequestMapping(value = "/main/table.do", method = {RequestMethod.GET, RequestMethod.POST} )
    public ModelAndView tableview(@ModelAttribute TableVO tableVO) {
        ModelAndView mav = new ModelAndView("/main/bootstraptable");

        System.out.println("화면으로 이동");

        return mav;
    }

    @RequestMapping(value = "/main/gridSearch.do", method = {RequestMethod.GET, RequestMethod.POST} )
    public @ResponseBody Map<String, Object> searchView(@ModelAttribute TableVO tableVO) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        try{

            List<TableVO> tableList = mainService.selectTableList(tableVO);

            map.put("tableList",tableList);

        }catch (Exception e){

            logger.error("{}", e);
            throw new Exception("Error");
        }

        return map;
    }



}
