<%@ page contentType="application/json; charset=UTF-8"%>
<%@ page import="data.person.Person" %>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%
//자바코드 -> 이렇게 Person객체를 만들어준다~!
 Person p1 = new Person("김자바",30,"여");
 Person p2 = new Person("김오라클",20,"남");
 Person p3 = new Person("김스프링",10,"남");

 List<Person> list = new ArrayList<>();
 list.add(p1); //리스트 추가시 add메서드 사용~!
 list.add(p2); 
 list.add(p3); 
 
 Gson gson = new Gson();
 String p_text = gson.toJson(list);
 
 out.print(p_text);
 
 
%>
