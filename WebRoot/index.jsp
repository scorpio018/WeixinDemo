<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    <table>
    	<tr>
    		<td>signature(微信加密签名，signature结合了开发者填写的token参数和请求中的timestamp参数、nonce参数。)</td>
    		<td><s:property value="weixinBean.signature"/></td>
    	</tr>
    	<tr>
    		<td>timestamp(时间戳)</td>
    		<td><s:property value="weixinBean.timestamp"/></td>
    	</tr>
    	<tr>
    		<td>nonce(随机数)</td>
    		<td><s:property value="weixinBean.nonce"/></td>
    	</tr>
    	<tr>
    		<td>echostr(随机字符串)</td>
    		<td><s:property value="weixinBean.echostr"/></td>
    	</tr>
    	<tr>
    		<td colspan="2">
    			开发者通过检验signature对请求进行校验（下面有校验方式）。若确认此次GET请求来自微信服务器，请原样返回echostr参数内容，则接入生效，成为开发者成功，否则接入失败。
				加密/校验流程如下：
				1. 将token、timestamp、nonce三个参数进行字典序排序
				2. 将三个参数字符串拼接成一个字符串进行sha1加密
				3. 开发者获得加密后的字符串可与signature对比，标识该请求来源于微信
    		</td>
    	</tr>
    </table>
  </body>
</html>
