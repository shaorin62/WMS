<%--
  Created by IntelliJ IDEA.
  User: shaor
  Date: 2018-05-04
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
  http://itoast.kr/how-to-use-toast/toast_manual.pdf
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/coms/include/taglib.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1">
    <!--TOSTA-->
    <link rel="stylesheet" type="text/css" href="${ctx }/resources/node_modules/tui-grid/dist/tui-grid.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/nhnent/tui.time-picker/v1.0.0/dist/tui-time-picker.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/nhnent/tui.date-picker/v3.0.0/dist/tui-date-picker.css" />

</head>
<body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mockjax/1.6.2/jquery.mockjax.min.js"></script>
<script type="text/javascript" src="${ctx }/resources/node_modules/tui-grid/examples/data/basic-dummy.js"></script>
<script type="text/javascript">

    $.mockjax({
        url: 'api/readData',
        responseTime: 0,
        response: function(settings) {
            var page = settings.data.page;
            var perPage = settings.data.perPage;
            var start = (page - 1) * perPage;
            var end = start + perPage;
            var data = gridData.slice(start, end);

            this.responseText = JSON.stringify({
                result: true,
                data: {
                    contents: data,
                    pagination: {
                        page: page,
                        totalCount: 20
                    }
                }
            });
        }
    });

</script>



<script type="text/javascript" class="code-js">
    var grid ;          //그리드 변수
    var gridDataSet ;   //데이터 셋 변수

    //스크립트의 시작
    $(document).ready(function(){
        //최초 조회
        Search();

    });



    //기본 조회
    function Search(){
        $.ajax({
            type : "post",
            url : "${ctx}/main/gridSearch.do",
            data : {},
            success : function(data){

                gridDataSet = data.tableList;

                //Grid 세팅
                initGrid();
            }
        });
    }

    //최초 로딩시 그리드 세팅
    function initGrid(){

        grid = new tui.Grid({
            el: $('#grid'),
            scrollX: false,
            scrollY: false,
            rowHeight: 40,
            pagination: true,
            header: {
                height: 40
            },
            rowHeaders: [{
                    type : 'checkbox'
                },
                {
                    type: 'rowNum',
                    title: 'No.'
            }],
            columns: [
                {
                    title : '텍스트',
                    name : 'tb_name',
                    width : 150,
                    onBeforeChange: function(ev){
                        console.log('Befo\n' +
                            '                    width : 150,re change:' + ev);
                    },
                    onAfterChange: function(ev){
                        console.log('After change:' + ev);
                    },
                    editOptions: {
                        type: 'text',
                        useViewMode: true
                    }
                },
                {
                    title : '날짜',
                    name : 'tb_date',
                    width : 150,
                    onBeforeChange: function(ev){
                        console.log('Before change:' + ev.value);
                    },
                    onAfterChange: function(ev){
                        console.log('After change:' + ev);
                    },
                    editOptions: {
                         type: 'text'
                    },
                    component: {
                        name: 'datePicker',
                        options: {
                            date: new Date(),
                            selectableRanges: [
                                [new Date(2010, 3, 10), new Date(9999,12,31)]
                            ]
                        }
                    }
                },
                {
                    title : '가격(금액)',
                    name : 'tb_amt',
                    width : 150,
                    onBeforeChange: function(ev){
                        console.log('Before change:' + ev);
                    },
                    onAfterChange: function(ev){
                        console.log('After change:' + ev);
                    }
                },
                {
                    title : '체크플래그',
                    name : 'tb_flag',
                    onBeforeChange: function(ev){
                        console.log('Before change:' + ev);
                    },
                    onAfterChange: function(ev){
                        console.log('After change:' + ev);
                    },
                    editOptions: {
                        type: 'radio',
                        listItems: [
                            { text: '선택', value: 'Y' },
                            { text: '미선택', value: 'N' }
                        ],
                        useViewMode: true
                    },
                    copyOptions: {
                        useListItemText: true // when this option is used, the copy value is concatenated text
                    }
                }
            ]
        });

        grid.setData(gridDataSet);
        // grid.disableRow(3); //그리드 데이터 비활성화

        // Bind event handlers
        grid.on('beforeRequest', function(data) {
            // For all requests
            alert(111);
        }).on('response', function(data) {
            // For all response (regardless of success or failure)
            alert(data);
            console.log(data.responseData.tableList[0]);
        }).on('successResponse', function(data) {
            // Only if response.result is true
            alert(133311);
        }).on('failResponse', function(data) {
            // Only if response.result is false
            alert(data);
            console.log(data);
        }).on('errorResponse', function(data) {
            // For error response
            alert(55);
        });

        var net;

        net = grid.getAddOn('Net');

        // Request create
        net.request('createData');

        // Request update
        net.request('updateData');

        // Request delete
        net.request('deleteData');

        // Request create/update/delete at once
        net.request('modifyData');

    }


    tui.Grid.applyTheme('striped');



</script>


</body>

<form id="data_form" method="post">

    <div id="grid"></div>
</form>



</html>