package com.jnf.wms.toastgrid.service.impl;

import com.jnf.wms.comm.obj.service.impl.AbstractDAO;
import com.jnf.wms.toastgrid.service.TableVO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("TostgridDAO")
public class ToastgridDAO extends AbstractDAO {
    String namespace = "Toastgrid.";


    public List<TableVO> selectTableList(TableVO tableVO) throws Exception {
        return selectList(namespace + "selectTableList", tableVO);
    }



}
