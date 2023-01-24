<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="domain.Passport" %>
<%!
    Passport passport_dto;
    String[] icon = {"globe", "jelly", "cat", "dog", "ghost"};
    String[] case_color = {"green", "navy", "black", "red"};
    String path = "/images/passport";
%>
<%passport_dto = (Passport) request.getAttribute("passport_dto");%>

