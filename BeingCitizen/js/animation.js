$(".explore").click(function(){
	var html = $("body,html");
	$(html).animate({scrollTop:window.innerHeight+'px'});
});

$(document).ready(function(){
	//voice
	
	var controller = new ScrollMagic.Controller();
	
	//For voice box, defining tween elements
	var blockTween_voice = new TweenMax.to('#voice-box',1.7,{
		transform:'translateY('+Math.min($(".screenbox").height(),$(".screenbox").width())*0.01+'em)',
		opacity:'1'
	});
	
	var voice_desc_tween = new TweenMax.to('#voice-box-desc',1.7,{
		transform:'translateY('+Math.min($(".screenbox").height(),$(".screenbox").width())*0.015+'em)',
		opacity:'1'
	})
	
	var voice_high = new TweenMax.to('#high_vo',2.3,{
		color:'#F5F5F5'
	});
	
	var voice_img = new TweenMax.to('#voice-img',2.2,{
		opacity:1,
		transform:'translateY('+Math.max($(".screenbox").height(),$(".screenbox").width())*0.008+'em)',
	});

	//Now creating Scenes
	var voice_title = new ScrollMagic.Scene({
		triggerElement: '#voice'
	})
	.setTween(blockTween_voice);
	
	var voice_desc = new ScrollMagic.Scene({
		triggerElement: '#voice',
	})
	.setTween(voice_desc_tween);
	
	var voice_hi = new ScrollMagic.Scene({
		triggerElement:'#voice',
	})
	.setTween(voice_high);
	
	var voice_im = new ScrollMagic.Scene({
		triggerElement:'#voice',
	})
	.setTween(voice_img);
	
	//Opinion
	
	var blockTween_opinion = new TweenMax.to('#opinion-box',1.7,{
		transform:'translateY('+Math.min($(".screenbox").height(),$(".screenbox").width())*0.01+'em)',
		opacity:'1'
	});
	
	var op_desc_tween = new TweenMax.to('#opinion-box-desc',1.7,{
		transform:'translateY('+Math.min($(".screenbox").height(),$(".screenbox").width())*0.015+'em)',
		opacity:'1'
	});
	
	var op_hi = new TweenMax.to('#high_op',2.3,{
		color:'#b71c1c'
	});
	
	var op_image = new TweenMax.to('#opinion-img',2.2,{
		opacity:1,
		transform:'translateY('+Math.max($(".screenbox").height(),$(".screenbox").width())*0.008+'em)',
	});
	
	//set opion triggers
	
	var opinion_title = new ScrollMagic.Scene({
		triggerElement: '#opinion'
	})
	.setTween(blockTween_opinion);
	
	var opinion_desc = new ScrollMagic.Scene({
		triggerElement: '#opinion'
	})
	.setTween(op_desc_tween);
	
	var opinion_hi = new ScrollMagic.Scene({
		triggerElement: '#opinion'
	})
	.setTween(op_hi);
	
	var opinion_im = new ScrollMagic.Scene({
		triggerElement: '#opinion'
	})
	.setTween(op_image);
	
	//Know More
	
	var blockTween_know = new TweenMax.to('#know-box',1.7,{
		transform:'translateY('+Math.min($(".screenbox").height(),$(".screenbox").width())*0.01+'em)',
		opacity:'1'
	});
	
	var know_desc_tween = new TweenMax.to('#know-box-desc',1.7,{
		transform:'translateY('+Math.min($(".screenbox").height(),$(".screenbox").width())*0.015+'em)',
		opacity:'1'
	});
	
	var know_high = new TweenMax.to('#high_kn',2.3,{
		color:'#b71c1c'
	});
	
	var know_img = new TweenMax.to('#know-img',2.2,{
		opacity:1,
		transform:'translateY('+Math.max($(".screenbox").height(),$(".screenbox").width())*0.008+'em)',
	});
	
	var know_title = new ScrollMagic.Scene({
		triggerElement:'#know'
	})
	.setTween(blockTween_know);
	
	var know_desc = new ScrollMagic.Scene({
		triggerElement:'#know'
	})
	.setTween(know_desc_tween);
	
	var know_hi = new ScrollMagic.Scene({
		triggerElement:'#know'
	})
	.setTween(know_high);
	
	var know_im = new ScrollMagic.Scene({
		triggerElement:'#know'
	})
	.setTween(know_img);
	
	controller.addScene([
		voice_title,
		voice_desc,
		voice_hi,
		voice_im,//voice
		opinion_title,
		opinion_desc,
		opinion_hi,
		opinion_im, //opinion
		know_title,
		know_desc,
		know_hi,
		know_im,
	]);
	
	//background-colors for tabs
	
	var voice_bg = new TweenMax.to('#voice-wrapper',0.4,{
		background:'#ff1744',
		height:'100%',
	});
	
	var voice_bg_screen = new ScrollMagic.Scene({
		triggerElement:'#voice',
	})
	.setTween(voice_bg);
	
	var opinion_bg = new TweenMax.to('#opinion-wrapper',0.4,{
		background:'#F5F5F5',
		height:'100%;,
	});
	
	controller.addScene([
		voice_bg_screen,
	]);
});
