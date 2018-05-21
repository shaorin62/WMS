package com.jnf.wms.main.service.impl;

import com.jnf.wms.main.service.MainService;
import com.jnf.wms.main.service.MainVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("MainService")
public class MainImpl implements MainService {
    @Resource(name = "MainDAO")
    private MainDAO mainDAO;

    public List<MainVO> selectMainList(MainVO mainVO) throws Exception{
        return mainDAO.selectMainList(mainVO);
    }

}
