$(document).ready(function () {
	$('#fragment-1 img').load(function (){
		var fImg = $(this).height();
		$('#featured').css('height',fImg);
	});
	
    $(function () {
        if ($(".fadein > div").length > 1) {
		    $('.fadein .ui-tabs-panel:gt(0)').hide();
		    featuredInt = setInterval(function(){
			      $('.fadein > .ui-tabs-panel:first-child').hide().next().fadeIn().end().appendTo('.fadein');
			      if ($('.ui-tabs-selected').is('.ui-tabs-nav :last-child')) {
					    $('.ui-tabs-selected').removeClass('ui-tabs-selected');
					    $('#nav-fragment-1').addClass('ui-tabs-selected');
			      }
			      else {					
			      $('.ui-tabs-selected').removeClass('ui-tabs-selected').next('li').addClass('ui-tabs-selected');
			      }
		      }, 
		      4000);
	       $('.ui-tabs-nav-item').bind('click', function(e) {
			    e.preventDefault();
			    clearInterval(featuredInt);
			    $(this).addClass('ui-tabs-selected').siblings().removeClass('ui-tabs-selected');
			    var fragmentID = $(this).children('a').attr('href');
			    $(fragmentID).fadeIn().siblings().hide();
		    });
        }
	});
});
