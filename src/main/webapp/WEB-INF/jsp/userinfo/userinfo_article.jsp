<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<div id="content" class="right_sidebar">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">   
                	<!-- 文章列表 -->                	
                        <div class="block_blog_1">  
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
                        </div>
                        
                        <div class="line_2" style="margin:24px 0px 25px;"></div>
                        <!-- 分页插件 -->
                        <div class="block_pager">
                        <ul class="page" maxshowpageitem="5" pagelistcount="5"  id="page"></ul>
                        </div>
                        
                    </div>
                    
                    <div class="sidebar">                     
                      <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_posts">
                        	<h4>热门文章</h4>
                            <c:forEach var="hotar" items="${hotarlist}">
                        	<div class="article">             
								<div class="text">
									<p class="title"><a href="#">${hotar.articleName}</a></p>
									<div class="date"><p>${hotar.creatTime}</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">${hotar.readNum}</a></li>
                                            <li><a href="#" class="comments">${hotar.commentNum}</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_3"></div>  
							 </c:forEach>                                              
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                       <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_calendar">
                        <!--  -->                                                       
                            <div class="line_2"></div>
                        </div>
                        

                        
                    </div>
                    
                	<div class="clearboth"></div>
                </div>
            </div>
        </div>
