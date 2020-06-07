$(function() {
	"use strict";

	/* scroll */
	$(window).scroll(function () {
		$("#topContent").not(".fullPage #topContent").fadeIn(500);
	});
	$(".topContent").click(function() {
		$("html, body").animate({
			scrollTop: $(".BGTable").offset().top
		}, 1600);
	});
	$(".goContent").click(function() {
		var myContent;
		if ( $("#dnn_ContentPane").length < 1 ) {
			myContent = $("#dnn_MainFullPane");
		} else {
			myContent = $("#dnn_ContentPane");
		}
		$("html, body").animate({
			scrollTop: (myContent).offset().top -60
		}, 400);
	});
	$(".filter.heroTabs a").click(function () {
	    var self = this;

	    $(".partner-type-description").addClass("hidden");

        if (self.id == "filter-implementers") {
            $("#description-implementers").removeClass("hidden");
        }
        if (self.id == "filter-designers") {
            $("#description-designers").removeClass("hidden");
        }
        if (self.id == "filter-developers") {
            $("#description-developers").removeClass("hidden");
        }

		$("html, body").animate({
			scrollTop: $("#dnn_MainFullPane").offset().top -100
		}, 400);
	});

	/* Mod skin for Privacy & Terms */
	if ( $('.dnnTerms,.dnnPrivacy').length) {
		$('.bannerMainFull').hide();
	}

	/* Parallax, please... */
	$.stellar({
		responsive: true,
		horizontalScrolling: false
	});
	$(".backgroundImage").each(function() {
	    var parallaxImage = $("img", this).attr("src");
	    var currentURL = window.location.href;

	    if (currentURL.indexOf("Concierge") != -1 || currentURL.indexOf("Environment") != -1 || currentURL.indexOf("Scaling") != -1 || currentURL.indexOf("Migration") != -1) // Compare with product name
	    {
	        var filename = parallaxImage.match(/.*\/(.*)$/)[1];
	        parallaxImage = parallaxImage.replace(filename, 'Designers-hero.jpg');
	    }
	    else if (currentURL.indexOf("Cloud") != -1) {
	        var filename = parallaxImage.match(/.*\/(.*)$/)[1];
	        parallaxImage = parallaxImage.replace(filename, 'hero1.jpg');
	    }

	    $(this).prev().css("backgroundImage", "url(" + parallaxImage + ")");
	    $(this).hide();
	});
	
	/* e-commerce section using tab classes */
	
	var preselected = $("select.prettyselect").val();
	$("#" + preselected).collapse("show");
	$(".eCommerce-img.skewImg div div.img" + preselected).addClass("opacity100");
	
	$(".eCommerce select.prettyselect").selectBox({mobile: true}).change(function () {
		var selected = $(this).val();
		if ( $("#" + selected).hasClass(".in") ) {
			$(".eCommerce > div").not(".in").collapse("hide");
		} else {
			$(".eCommerce > div").collapse("hide");
			$("#" + selected).collapse("show");
			$(".skewImg div div").removeClass("opacity100");
			$(".skewImg div div.img" + selected).addClass("opacity100");
		}
	});


	/* Animate */
	$(".animateMe").each(function() {
		var animationData = $(this).attr("data-animate");
		var animationClass = $(this).attr("class");
		$(this).parents(".DnnModule").addClass(animationClass).addClass("triggerAnimation").attr("data-animate",animationData);
	});
	
	if ($(".animated")[0]) {
		jQuery(".animated").css("opacity", "0");
	}

    $(window).load(function() {
		$(".triggerAnimation").waypoint(function() {
			var animation = $(this).attr("data-animate");
			$(this).css("opacity", "1");
			$(this).addClass("animated " + animation);
		},{
			offset: "90%",
			triggerOnce: false
		});

	});

	/*	Feedback Form labels as placeholders */
	$(".jumboForm input[id*=\"Email\"]", this).attr("placeholder","Your Email…");
	$(".jumboForm input[id*=\"Subject\"]", this).attr("placeholder","The Subject…");
	$(".jumboForm input[id*=\"txtName\"]", this).attr("placeholder","Your Name…");
	$(".jumboForm textarea[id*=\"txtBody\"]", this).attr("placeholder","Your Message…");

	/*$('.tabCollapse').tabCollapse();*/

	/* Announcements Careers */
	$("#careers > div").each(function() {
		var AnnTrigger = $(".AnnTitle > a",this);
		var AnnTarget = $(".collapse",this);
		$(AnnTrigger).click(function() {
			$("#careers > div .collapse").collapse("hide");
			$("#careers > div .AnnTitle > a").not(this).removeClass("expanded");
			$(AnnTarget).collapse("toggle");
			$(AnnTrigger).toggleClass("expanded");
		});
	});
	
	/* Demo collapses */
	$("#Demo > div > div").each(function() {
		var demoTrigger = $(".dialog",this);
		var demoTarget = $(".collapse",this);
		$(demoTrigger).hover(function() {
			$("#Demo > div > div .collapse").collapse("hide");
			$(demoTarget).collapse("toggle");
		});
	});
	
	/* owl carousels */
	var owlTech = $("#Tech");
	owlTech.owlCarousel({
		autoPlay: 8000,
		items : 3,
		itemsDesktop : [1199,3],
		itemsMobile : [979,2]
	});
	
	var owlShowcase2 = $("#showCase.items2");
	owlShowcase2.owlCarousel({
		autoPlay: 8000,
		itemsScaleUp:true,
		items : 2,
		itemsTablet : [979,2],
		itemsMobile : [768,1],
		navigation: true,
		navigationText:[" "," "],
		pagination:false
	});
	
	var owlShowcase3 = $("#showCase.items3");
	owlShowcase3.owlCarousel({
		autoPlay: 8000,
		items: 3,
		itemsDesktop: [1199,3],
		itemsTablet: [979,2],
		itemsMobile: [768,1],
		navigation: true,
		navigationText: [" "," "],
		pagination: false
	});
	
	var owlTestimonials = $("#testimonials");
	owlTestimonials.owlCarousel({
		autoPlay: 8000,
		singleItem: true,
		navigation: true,
		navigationText: [" "," "],
		pagination: false,
		transitionStyle: "fade"
	});
	
	/* synched owl carousel cashIn */
	var sync1 = $(".synchedTabs");
	var sync2 = $(".synchedTabsNav");
	sync1.owlCarousel({
		singleItem: true,
		slideSpeed: 1000,
		afterAction: syncPosition,
		transitionStyle: "fade",
		autoHeight: true,
		responsiveRefreshRate: 200
	});
	sync2.owlCarousel({
		items: 5,
		pagination: false,
		responsiveRefreshRate: 100,
		afterInit: function(el){
			el.find(".owl-item").eq(0).addClass("synced");
		}
	});
	function syncPosition(){
		var owlCurrent = this.currentItem;
		$(".synchedTabsNav").find(".owl-item").removeClass("synced").eq(owlCurrent).addClass("synced");
		if($(".synchedTabsNav").data("owlCarousel") !== undefined){
			center(owlCurrent);
		}
	}
	$(".synchedTabsNav").on("click", ".owl-item", function(e){
		e.preventDefault();
		var number = $(this).data("owlItem");
		sync1.trigger("owl.goTo",number);
	});
	function center(number){
		var sync2visible = sync2.data("owlCarousel").owl.visibleItems;
		var num = number;
		var found = false;
		for(var i in sync2visible){
			if(num === sync2visible[i]){
				found = true;
			}
		}
		if(found===false){
		if(num>sync2visible[sync2visible.length-1]) {
			sync2.trigger("owl.goTo", num - sync2visible.length+2);
		} else {
			if(num - 1 === -1){
			num = 0;
		}
		sync2.trigger("owl.goTo", num);
		}
		} else if(num === sync2visible[sync2visible.length-1]) {
			sync2.trigger("owl.goTo", sync2visible[1]);
		} else if(num === sync2visible[0]) {
			sync2.trigger("owl.goTo", num-1);
		}
	}

    /* shuffle items */
	var parent = $(".isotope.shuffle");
	var lis = parent.children();
	while (lis.length) {
		parent.append(lis.splice(Math.floor(Math.random() * lis.length), 1)[0]);
	}


	/* hide right or left column on profile pages */
	if($("#dnnEditUser").length > 0 ) {
	   $("#dnnEditUser").parents(".MainPane").removeClass("col-sm-8 col-md-9");
	}

	/* fix size of thumbnail on social pages */
	$(".journalrow div.author img").each(function() {
		var thumbSrc = $(this).attr("src").replace("&h=32&w=32","");
		$(this).attr("src",thumbSrc);
	});
	/* In 4 cols case, prevent 3rd col-xs-6 catching a taller 1st one when on responsive 2 cols */
	$(".col-xs-6.myPane + .col-xs-6 + .col-xs-6").not(".col-xs-6.myPane + .col-xs-6 + .col-xs-6 + .col-xs-6").each(function() {
	  $(this).before("<div class=\"clearfix visible-xxs visible-xs visible-sm\"/>");
	});


	/* On window width change... */
	$(window).load(function() {
		
		$(checkWidth);
		$(window).resize(checkWidth).trigger("resize");
	
		function checkWidth(){
			var windowsize = $(window).width();
			var windowheight = $(window).height();
			
			/* Full Screen */
			$(".fullScreen").height(windowheight);
			if(windowsize < 1170){
				$(".fullScreen .siteWidth").css("width", "100%");
			} else if(windowsize >= 1170){
				$(".fullScreen .siteWidth").css("width", "");
			}
			
			if(windowsize >= 640){
				/* sticky menu */
				$(".homePage .header2 > .headerMain2").sticky({topSpacing:0});
				$(".subPage header > .headerMain2").sticky({topSpacing:0});
			} 
			if(windowsize < 640){
				/* sticky menu */
				$(".homePage .header2 > .headerMain2").unstick();
				$(".subPage header > .headerMain2").unstick();
			} 
		}
	});

    /* Fix to remove unnecessary class added by Action Form */
	$(document).ready(function () {
	    $(".af-field-wrapper .field-container").removeClass("col-sm-6");
	    $(".af-field-wrapper .field-container").removeClass("col-sm-12");
	});

});