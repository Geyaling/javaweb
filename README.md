# Java Web Learning

## 课程要求
暂不确定

## 项目名称
暂不确定

## 项目简介
暂不确定

## 基本信息
- 学号: **222016321072001**
- 网址: 
	+ [阿里云地址1](http://120.79.241.229:8080/sum01/login.html)
	+ [阿里云地址2](http://120.79.241.229:8080/JSP/jsp_session2/login.jsp)
	+ [阿里云地址3](http://120.79.241.229:8080/JSP/jsp_login/index.jsp)

## 完成内容一
- 第一个Servlet程序练习
- Servlet:
	+ 实现javax.servlet.Servlet接口
	+ 继承javax.servlet.GenericServlet类
	+ 继承javax.servlet.http.HttpServlet类

## 完成内容二
- Servlet基础学习:
	+ ServletConfig
	+ ServletContext    
	+ ServletRequest
	+ ServletResponse

## 完成内容三
- 完成[13 小结与练习(源码git链接)](https://github.com/Geyaling/sum01)
- 要求：[阿里云地址](http://120.79.241.229:8080/sum01/login.html)
	+ 在MySQL数据库中创建一个test_users数据表,添加3个字段：id,username,password,并录入几条记录
	+ 定义一个login.html里面定义两个请求字段:user password,发送请求到loginServlet
	+ 在创建一个LoginServlet,在其中获取请求的user，password
	+ 利用JDBC从test_users中查询有没有和页面输入的user,password对应的记录,XXX为user.
		+ 若有，响应:Hello:XXX
		+ 若没有，响应Sorry:XXX

## 完成内容四
- 结果：
	+ [阿里云地址](http://120.79.241.229:8080/JSP/jsp_session2/login.jsp)
	+ [阿里云地址](http://120.79.241.229:8080/JSP/jsp_login/index.jsp)

- 实现：
	+ login.jsp：提供登录表单，提交表单请求LoginServlet
	+ LoginServlet：获取请求参数，校验用户是否登录成功
		+ 失败：保存错误信息到request域，转发到login.jsp(login.jsp显示request域中的错误信息)
		+ 成功：保存用户信息到session域中，重定向到succ1.jsp页面，显示session域中的用户信息
	+ succ1.jsp：从session域获取用户信息，如果不存在，显示“您还没有登录”。存在则显示用户信息
