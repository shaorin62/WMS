/*
 * @Javascript Name : common.js
 * @Description : 공통 JS
 * @Modification : Information
 * @Since
 * @Program By
 * @Copyright (C) 2018 All right reserved
 */

/**********************************************************************
 * 본 스크립트는 시스템에서 공통으로 사용될 함수 입니다.
 **********************************************************************/


function fn_menu(url, menuCode){
    var form = $("<form></form>>");
    $(form).attr("method","post");
    $(form).attr("action",url);
    $(form).append("<input type='hidden' name='menuCode' value='" + menuCode + "' />");
    $(form).appendTo("body");
    $(form).submit();
}
