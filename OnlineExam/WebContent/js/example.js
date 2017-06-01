(function(){
	$('#star dl dt').each(function(i){
		$(this).css('background','url(starimg.jpg) 0 ' + i * -61 +'px no-repeat').parent().attr('i',i);
	});

	var starHoverT;
	$('#star').delegate('dl','mouseenter',function(){
		clearTimeout(starHoverT);
		var n = $('#star dl:visible').index($(this)),h = $(this).attr('h'),i=$(this).attr('i');
		starHoverT = setTimeout(function(){
			if($('#starHover').css('width') != '0px'){
				var curY = $('#starHover').css('top').replace('px','');
				var oneY = curY > n * 87 ? 24 : 10,
				twoY = oneY == 10 ? 24 : 10;
				$('#starHover').stop().animate({'top':n * 87 - oneY},100).animate({'top':n * 87 - twoY},100).animate({'top':n * 87 - 18},50);
			}else{
				$('#starHover').css({'top':n * 87 - 18}).html('<b></b>');
				$('#starHover').animate({'width':226},200);
			}
			$('#starHover b').css('margin-top',i * -127).parent().attr('href',h);
		},200);
	});
	
	$('#star').mouseleave(function(){
		clearTimeout(starHoverT);
		$('#starHover').animate({'width':0},200);
	});

	$('#star .next').mouseenter(function(){
		$('#star').trigger('mouseleave');
	});
	var starAnim = false;
	$('#star .next i').mouseenter(function(){
		if(starAnim || $(this).hasClass('on')) return false;
		starAnim = true;
		$('#star .next i').removeClass('on');
		var i = $(this).addClass('on').index();
		$('#star dl:visible').slideUp(200,function(){
			starAnim = false;
		});
		$('#star dl').slice(i * 7,i * 7 + 7).slideDown(200);
	});


})();