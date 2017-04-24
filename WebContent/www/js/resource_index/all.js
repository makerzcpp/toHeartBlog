// JavaScript Document
$(function() {

    // 公共页头导航栏选中目标效果
    var menuUrl = window.location.href;
    menuUrl = menuUrl.replace("http://", "");
    var index = menuUrl.indexOf("/");
    var subUrl = menuUrl.substring(index, menuUrl.length);
    $(".head").find("a").each(function(i, item) {
        if (($(this).attr("href") != '' && $(this).attr("href").indexOf(subUrl) != -1) || subUrl.indexOf($(this).attr("href")) != -1) {
            $(this).parent().attr("class", "current").siblings().removeClass("current");
            return false;
        } else if (subUrl != "" && i == $(".head").find("a").size() - 1) {
            $(".head li").removeClass("");
        }
    });

    // 返回网页头部按钮
    $(window).scroll(function() {
        if ($(window).scrollTop() > 100) {
            $(".side_top").fadeIn(400);
        } else {
            $(".side_top").fadeOut(400);

        }
    });

    $('.side_top').click(function() {
        $('body,html').animate({
            scrollTop: 0
        }, 300);
    })

    // 登录弹窗
    $('.login_d').click(function() {
        $('.mask_layer').show();
        $('.login_tog').show();
    });
    $('.right_content :input').not('.checkbox_sel').focus(function() {
        $(this).parent().css('border', 'solid 1px #009bdf');
    }).blur(function() {
        $(this).parent().css('border', 'solid 1px #ccc');
    });
    $('.login_close').click(function() {
        $('.mask_layer').hide();
        $('.login_tog').hide();
    });


    // 优课详情收起效果
    var $yc_count = 0;
    $(".pszj").click(function() {
        if ($yc_count % 2 == 0) {
            $(this).parent().addClass('expert_toggle');
            $(this).text('展开');
        } else {
            $(this).parent().removeClass('expert_toggle');
            $(this).text('收起');
        }
        $yc_count++;
    });

    var $yc_count2 = 0;
    $(".cyjs").click(function() {
        if ($yc_count2 % 2 == 0) {
            $(this).parent().addClass('expert_toggle');
            $(this).text('展开');
        } else {
            $(this).parent().removeClass('expert_toggle');
            $(this).text('收起');
        }
        $yc_count2++;
    });

    // 点播页面弹窗
    $("body").click(function(e) {
        $(".phone .view_phone").hide();
        $(".link .view_link").hide();
        $(".download ul").hide();
    });

    $(".icon_phone, .icon_name, .icon_arrow").click(function(e) {
        $(this).siblings(".view_phone").toggle();
        $(this).siblings(".view_phone").click(function(e) {
            e.stopPropagation();
        });
        $(this).parent().siblings('.link').find('.view_link').hide();
        e.stopPropagation();
        $("body,html").animate({
            scrollTop: 400
        }, 300);
        return false;
    });

    $(".icon_link, .icon_name, .icon_arrow").click(function(e) {
        $(this).siblings(".view_link").toggle();
        $(this).siblings(".view_link").click(function(e) {
            e.stopPropagation();
        });
        $(this).parent().siblings('.phone').find('.view_phone').hide();
        $("body,html").animate({
            scrollTop: 400
        }, 300);
        return false;
        e.stopPropagation();
    });

    $(".t_right .download").click(function(e) {
        $(this).children("ul").toggle();
        $("body,html").animate({
            scrollTop: 400
        }, 300);
        return false;
        e.stopPropagation();
    });

    /*$(".t_right .review").click(function() {
        $(".review_tog").show();
    });

    $(".review_tog .submit .close").click(function() {
        $(".review_tog").fadeOut(100);
    });

    $(".review_tog em").click(function() {
        $(".review_tog").fadeOut(100);
    });*/

    // 星级评分

    $(".review_item .mark i").mouseover(function() {
        $(this).addClass("hover");
        $(this).prevAll().addClass("hover");
        $(this).nextAll().removeClass('hover')
    });
    $(".review_item .mark i").mouseout(function() {
        $(this).removeClass("hover");
        $(this).prevAll().removeClass("hover");
    });

    $(".review_item .mark i").click(function() {
        $(".review_item .mark i").mouseout(function(e) {
            e.stopPropagation();
        });
        
        var _this = $(this);
        
        var $marks = _this.index() + 1;   //第几个星星
        var itemAllScore = _this.parent().parent().find('.item-all-score').html();
        var eachScore = itemAllScore / 5;
        var myScore = eachScore * $marks;

        _this.addClass("sel");
        _this.prevAll().addClass("sel");
        _this.nextAll().removeClass('sel');
        
        // 设置当前项的分数
        _this.parent().parent().find('.mark span').html(myScore);
        
        var $aaa = 0;
        var $scoreSpan = _this.parents('dd').find('.mark span');
        $scoreSpan.each(function() {
        	$aaa += $(this).html() * 1;
        });
        
        _this.parents("dd").siblings().children(".item_sc").children('span').html($aaa);
        
        var temp = [];
        $(".review_item .item_sc span").each(function() {
            var temp0 = $(this).html();
            temp.push(temp0);
        });

        var $zongfen = 0;
        for (var i = 0; i < temp.length; i++) {
            $zongfen += parseInt(temp[i]);
        }
        $(".final p").html($zongfen);
    });

    $(".ch_button .join").click(function() {
        $(".review_tog").show();
    });

    $(".review_tog .submit .close").click(function() {
        $(".review_tog").fadeOut(100);
    });

    $(".review_tog em").click(function() {
        $(".review_tog").fadeOut(100);
    });

})



/*弹窗*/
$(".reward_btn,.reward_top a").click(function() {
    $('.reward_window').hide();
})


/*个人中心左侧选项卡选中效果*/
$(function() {
    var url = window.location.href;
    url = url.replace("http://", "");
    var index = url.indexOf("/");
    var subUrl = url.substring(index, url.length);
    $(".uc_side").find("a").each(function() {
        if ($(this).attr("href").indexOf(subUrl) != -1 || subUrl.indexOf($(this).attr("href")) != -1) {
            $(this).attr("class", "cur").siblings().removeClass("cur");
            return false;
        }
    });
});

$(function () {
    $('.shift li').click(function() {
        var $index = $('.shift li').index(this);
        $(this).addClass('cur').siblings().removeClass('cur');
        $('.com_list').eq($index).show().siblings('.com_list').hide()
    })
})