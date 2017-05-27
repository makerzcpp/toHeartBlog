<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <c:forEach var="ar" items="${arlist}">
                        	<article class="blog_post">
                            	<div class="tail"></div>                            	
                            	
                                <h4 class="title"><a href="blog_post.html">${ar.articleName}</a></h4>
                                
                                <div class="info">
                                	<div class="date"><p>${ar.creatTime}</p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category">
                                        	<p class="text">类别:</p>
                                            <ul>
                                              <c:forEach var="cg" items="${cglist}">
                                              <c:if test="${ar.categoryId == cg.categoryId}">
                                            	<li><a href="#"> ${cg.categoryName}</a></li>
                                            	</c:if>
                                            	  </c:forEach>
                                            </ul>
                                        </div>
                                        
                                        <a href="#" class="views">${ar.readNum}</a>
                                        <a href="#" class="comments">${ar.commentNum}</a>
                                    </div>
                                </div>
                                
                                <div class="content">
                                	<p>${ar.articleHead}</p>
                                </div>
                                
                            </article>
                            </c:forEach>