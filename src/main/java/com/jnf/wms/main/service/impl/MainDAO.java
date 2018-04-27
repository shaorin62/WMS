package com.jnf.wms.main.service.impl;

import com.jnf.wms.comm.obj.service.impl.AbstractDAO;
import com.jnf.wms.main.service.MainVO;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository("MainDAO")
public class MainDAO extends AbstractDAO {
    String namespace = "Main.";

    @SuppressWarnings("unchecked")
    public List<MainVO> selectMainList(MainVO mainVO) throws Exception {
        return selectList(namespace + "selectMainList", mainVO);
    }

}
