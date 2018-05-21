package com.jnf.wms.toastgrid.service;


import java.util.List;


public interface ToastgridService {


    /**
     * @Description 데이터베이스 데이터 조회
     * @param tableVO
     * @return List
     * @throws Exception
     */
    public List<TableVO> selectTableList(TableVO tableVO) throws Exception;

}
