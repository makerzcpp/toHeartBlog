/***
 * @description：视频列表信息展示
 */


function onDown(id) {
	window.location.href=BASE + '/sys/resourceCenter/download/'+id;
	resourceTop();		 
}
function onRank(id) {
	window.location.href=BASE + '/sys/resourceCenter/download/'+id;
	resourceTop();		 
}

$(function() {
	resourcePageList(1);
	resourceTop();
	$("#queryParam dd span").click(function(){
		$(this).parent("dd").children("span").removeClass("current");
		$(this).addClass("current");
		resourcePageList(1);
	});
	

	
	$("#on_sreach").click(function(){
		resourcePageList(1);
	});
	
	$(document).keydown(function(event){
		if(event.keyCode==13){
			resourcePageList(1);
		}
	});
	
	/*$("#orderCondition span").click(function(){
		$(this).parent("div").children("span").removeClass("blue");
		$(this).addClass("blue");
		resourcePageList(1);
	});*/

});

window.resourcePageList = function(pageNumber) {
	$.ajax({
		type: 'POST',
		url: BASE + '/sys/resourceCenter/albumList/content',
        data: _resourceAlbum.getParams(pageNumber),
        dataType: 'html',
        success: function(data) {
            $('.resource').html(data);
            $("#count_1").text($("#el_count").val());
        }
	});
};


window.resourceTop = function() {
	
	  $.ajax({
		type: 'get',  
		url: BASE + '/sys/resourceCenter/rank/'+coId,
        dataType: 'html',
        success: function(data) {
        	 $('.resource_rank').html(data);

        }
	});
};

var _resourceAlbum = {
	getParams : function(pageNumber){
		var pmson = {'pageNumber':pageNumber,'coId' : $("#coIdLG").val()};
		$.each($("#queryParam dl .current"),function(i,item){
			var changeLabel = $(item).parent().parent();
			pmson[changeLabel.data("name")] = $(this).data("value");
		});
		$.each($("#orderCondition .blue"), function(i,item){
			pmson[$(this).data("name")] = $(this).data("value");
			pmson["orderBy"] = $(this).data("order");
		});
		pmson['searchkeywords'] = $("#searchkeywords").val();
		return pmson;
	}
	
}


