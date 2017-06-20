$(function () {
	$.ajax({
		type : "POST",
		url : BASE+"/userinfo/articleblog/"+$("#blogId").val(),
		data : {'pageNum':'1','pageSize':'8'},
		dataType : 'html',
		success : function(data) {
			$('.page-content').html(data);
		}
	});
	
	var articleBlog = function(){
		$.ajax({
			type : "POST",
			url : BASE+"/userinfo/articleblog/"+$("#blogId").val(),
			data : {'pageNum':'1','pageSize':'8'},
			dataType : 'html',
			success : function(data) {
				$('.page-content').html(data);
			}
		});
	}
	 $(".articleBlog").click(articleBlog);
});