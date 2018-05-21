package com.jnf.wms.toastgrid.service.impl;


import com.jnf.wms.toastgrid.service.TableVO;
import com.jnf.wms.toastgrid.service.ToastgridService;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;


@Service("ToastgridService")
public class ToastgridImpl implements ToastgridService {

    @Resource(name = "TostgridDAO")
    private ToastgridDAO tostgridDAO;


    public List<TableVO> selectTableList(TableVO tableVO) throws Exception{
        return tostgridDAO.selectTableList(tableVO);
    }

}
