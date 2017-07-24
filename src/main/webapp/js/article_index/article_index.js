$(function(){	
	//分页插件初始化,加载页面
	var tt = function(dd){
		var pageNum = dd;
		var pageSize = $('#page').attr('pagelistcount');
		$.ajax({
			url : BASE+"/text/list/"+$("#blogId").val(),
			data : {'pageNum':pageNum,'pageSize':pageSize},
			type : 'POST',
			dataType : 'html',
			success : function(data) {
				$('.block_blog_1').html(data);
			}
			})
	    }
	  $("#page").initPage($('#artNum').val(),1,tt);
	
	  
	  
	  /*block_calendar内容
		var today = new Date();
		var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
		$('#calendar_sidebar').DatePicker({
			flat : true,
			date : date,
			calendars : 1,
			starts : 1,
			locale : {
				days : ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
				daysShort : ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
				daysMin : ['S', 'M', 'T', 'W', 'T', 'F', 'S', 'S'],
				months : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
				monthsShort : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
				weekMin : 'wk'
			}
		});*/
		
	
})