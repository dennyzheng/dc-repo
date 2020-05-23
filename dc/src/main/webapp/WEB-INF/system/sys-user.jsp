<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="/common/common.jspf" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户管理</title>
</head>
<body>
<form id="ff" method="post">
    <div>
        <label for="userName">名称:</label>
        <input class="easyui-validatebox" type="text" name="userName"   />
    </div>
    <div>
        <label for="account">账号:</label>
        <input class="easyui-validatebox" type="text" name="account"   />
    </div>
    <input type="button" onclick="queryUser()" value="查询">
</form>
<table id="dg"></table>
<div id="win"></div>
<script type="text/javascript">
    function queryUser() {
        alert("ddd");
        $("#dg").datagrid("load",{
            account:$("[name=account]").val(),
            userName:$("[name=userName]").val()
        });
    }
    $(function(){
        $('#dg').datagrid({
            url:'${baseURL}/sysUser/selectPage.mvc',
            columns:[[
                {checkbox:true},
                {field:'id',title:'编号',width:100},
                {field:'account',title:'帐号',width:100},
                {field:'userName',title:'名称',width:100,align:'right'}
            ]],
            fitColumns:true,
            toolbar:[{
                text:'新增',
                iconCls: 'icon-add',
                handler: function(){
                    alert('新增按钮');
                  /*  $('#win').window({
                        title:"添加用户",
                        width:600,
                        height:400,
                        href:'adduser.html',
                        modal:true
                    });*/
                }
            },'-',{
                text:'修改',
                iconCls: 'icon-edit',
                handler: function(){
                    alert('编辑按钮')
                }
            },'-',{
                text:'删除',
                iconCls: 'icon-remove',
                handler: function(){
                    //alert('删除按钮')
                    var rows = $('#dg').datagrid("getSelections");
                    //alert(rows.length);
                    for(var i=0;i<rows.length;i++){
                        alert(rows[i].productid);
                    }
                    //$.doAjax();到数据库进行删除

                    //删除完成后，重新刷新页面中datagrid
                    /*
                     $('#dg').datagrid("load");

                     */

                    /*如果不是删除数据库后重新加载数据，而是直接删除页面行，如何处理？
                     1。获取选 中的行   var rows = $('#dg').datagrid("getSelections");
                     2。根据选 中的行，获取该行索引，var index = $('#dg').datagrid("getRowIndex",row);
                     3。删除行    $('#dg').datagrid("deleteRow" index);  删除时索引号要从大往小遍历删除

                     */


                }
            }],
            //nowrap:false,
            pagination:true,
            rownumbers:true,
            pageSize:5,
            pageList:[5,10,15,20,25],
            /* queryParams: {
             userName: '1'
             }
             */
            /* rowStyler: function(index,row){
             if (row.unitcost>80){
             return 'background-color:#6293BB;color:#fff;';
             }
             }, */

            striped:true

        });
    });

</script>
</body>
</html>