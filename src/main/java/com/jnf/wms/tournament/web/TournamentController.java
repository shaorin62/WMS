package com.jnf.wms.tournament.web;

import com.jnf.wms.main.service.MainVO;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TournamentController {
    private Logger logger = Logger.getLogger(this.getClass());

    @SuppressWarnings("UnnecessaryLocalVariable")
    @RequestMapping(value = "/tournament/tournamentview.do", method = {RequestMethod.GET, RequestMethod.POST} )
    public ModelAndView main(@ModelAttribute MainVO mainVO) {
        ModelAndView mav = new ModelAndView("/tournament/tournamentview");
        return mav;
}

}
