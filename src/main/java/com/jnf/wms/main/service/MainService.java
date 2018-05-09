package com.jnf.wms.main.service;


import java.util.List;
import java.util.Map;


public interface MainService {

    /**
     * @Description 메인 DB 조회 테스트
     * @param mainVO
     * @return List
     * @throws Exception
     */
    public List<MainVO> selectMainList(MainVO mainVO) throws Exception;


    /**
     * @Description 데이터베이스 데이터 조회
     * @param tableVO
     * @return List
     * @throws Exception
     */
    public List<TableVO> selectTableList(TableVO tableVO) throws Exception;

}
