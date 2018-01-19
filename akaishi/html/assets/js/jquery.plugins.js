/*
 * jQuery EasIng v1.1.2 - http://gsgd.co.uk/sandbox/jquery.easIng.php
 *
 * Uses the built In easIng capabilities added In jQuery 1.1
 * to offer multiple easIng options
 *
 * Copyright (c) 2007 George Smith
 * Licensed under the MIT License:
 *   http://www.opensource.org/licenses/mit-license.php
 */
 
/* !easings */

// t: current time, b: begInnIng value, c: change In value, d: duration

jQuery.extend( jQuery.easing,
{
	easeInQuad: function (x, t, b, c, d) {
		return c*(t/=d)*t + b;
	},
	easeOutQuad: function (x, t, b, c, d) {
		return -c *(t/=d)*(t-2) + b;
	},
	easeInOutQuad: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t + b;
		return -c/2 * ((--t)*(t-2) - 1) + b;
	},
	easeInCubic: function (x, t, b, c, d) {
		return c*(t/=d)*t*t + b;
	},
	easeOutCubic: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t + 1) + b;
	},
	easeInOutCubic: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t + b;
		return c/2*((t-=2)*t*t + 2) + b;
	},
	easeInQuart: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t + b;
	},
	easeOutQuart: function (x, t, b, c, d) {
		return -c * ((t=t/d-1)*t*t*t - 1) + b;
	},
	easeInOutQuart: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t + b;
		return -c/2 * ((t-=2)*t*t*t - 2) + b;
	},
	easeInQuint: function (x, t, b, c, d) {
		return c*(t/=d)*t*t*t*t + b;
	},
	easeOutQuint: function (x, t, b, c, d) {
		return c*((t=t/d-1)*t*t*t*t + 1) + b;
	},
	easeInOutQuint: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
		return c/2*((t-=2)*t*t*t*t + 2) + b;
	},
	easeInSine: function (x, t, b, c, d) {
		return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
	},
	easeOutSine: function (x, t, b, c, d) {
		return c * Math.sin(t/d * (Math.PI/2)) + b;
	},
	easeInOutSine: function (x, t, b, c, d) {
		return -c/2 * (Math.cos(Math.PI*t/d) - 1) + b;
	},
	easeInExpo: function (x, t, b, c, d) {
		return (t==0) ? b : c * Math.pow(2, 10 * (t/d - 1)) + b;
	},
	easeOutExpo: function (x, t, b, c, d) {
		return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
	},
	easeInOutExpo: function (x, t, b, c, d) {
		if (t==0) return b;
		if (t==d) return b+c;
		if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
		return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
	},
	easeInCirc: function (x, t, b, c, d) {
		return -c * (Math.sqrt(1 - (t/=d)*t) - 1) + b;
	},
	easeOutCirc: function (x, t, b, c, d) {
		return c * Math.sqrt(1 - (t=t/d-1)*t) + b;
	},
	easeInOutCirc: function (x, t, b, c, d) {
		if ((t/=d/2) < 1) return -c/2 * (Math.sqrt(1 - t*t) - 1) + b;
		return c/2 * (Math.sqrt(1 - (t-=2)*t) + 1) + b;
	},
	easeInElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return -(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
	},
	easeOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		return a*Math.pow(2,-10*t) * Math.sin( (t*d-s)*(2*Math.PI)/p ) + c + b;
	},
	easeInOutElastic: function (x, t, b, c, d) {
		var s=1.70158;var p=0;var a=c;
		if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
		if (a < Math.abs(c)) { a=c; var s=p/4; }
		else var s = p/(2*Math.PI) * Math.asin (c/a);
		if (t < 1) return -.5*(a*Math.pow(2,10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )) + b;
		return a*Math.pow(2,-10*(t-=1)) * Math.sin( (t*d-s)*(2*Math.PI)/p )*.5 + c + b;
	},
	easeInBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*(t/=d)*t*((s+1)*t - s) + b;
	},
	easeOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
	},
	easeInOutBack: function (x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158; 
		if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
		return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
	},
	easeInBounce: function (x, t, b, c, d) {
		return c - jQuery.easing.easeOutBounce (x, d-t, 0, c, d) + b;
	},
	easeOutBounce: function (x, t, b, c, d) {
		if ((t/=d) < (1/2.75)) {
			return c*(7.5625*t*t) + b;
		} else if (t < (2/2.75)) {
			return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
		} else if (t < (2.5/2.75)) {
			return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
		} else {
			return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
		}
	},
	easeInOutBounce: function (x, t, b, c, d) {
		if (t < d/2) return jQuery.easing.easeInBounce (x, t*2, 0, c, d) * .5 + b;
		return jQuery.easing.easeOutBounce (x, t*2-d, 0, c, d) * .5 + c*.5 + b;
	}
});

/*
 * Luglio7 Image Preload
 * Copyright (c) 2011 Luca Bertaiola (luca@luglio7.com / www.luglio7.com)
 * Licensed under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 *
 */
 
/* !imagePreload */

(function($)
{
	
	$.fn.imagePreload = function(params)
	{
		// settings
	
		var settings = {
			easing      : 'swing',
			duration	: 750,
			cssInit		: {"opacity" : 0},
			cssComplete	: {"opacity" : 1},
			init		: null,
			complete	: null,
			fadeInit	: null
	    };
	    
	    if(typeof(params) == "object")
	    {
	    	$.extend(settings, params);
	    }
	    
	    var img, classes, src, alt;
	    
	    // verify callbacks
	    
	    var completeEvent = false;
	    if(settings.complete)
	    	if(settings.complete.constructor == Function)
	    		completeEvent = true;
	    		
	    var initEvent = false;
	    if(settings.init)
	    	if(settings.init.constructor == Function)
	    		initEvent = true;
	    		
	    var fadeInitEvent = false;
	    if(settings.fadeInit)
	    	if(settings.fadeInit.constructor == Function)
	    		fadeInitEvent = true;
	    
	    this.each(function()
	    {
	    	alt		= $(this).attr("alt");
	    	classes	= $(this).attr("class");
	    	id		= $(this).attr("id");
	    	src		= $(this).attr("src");
	    	width	= $(this).attr("width");
	    	height	= $(this).attr("height");
	    	
	    	img 	= document.createElement("img");
	    	
	    	if(alt)
	    		img.setAttribute("alt", alt);
	    		
	    	if(id)
	    		img.setAttribute("id", id);
	    		
	    	if(classes)
	    		img.setAttribute("class", classes);
	    		
	    	if(width)
	    		img.setAttribute("width", width);
	    		
	    	if(height)
	    		img.setAttribute("height", height);
	    		
	    	$(img).css(settings.cssInit);
	    	$(this).replaceWith(img);
	    	
	    	// callback
	    	
	    	if(initEvent)
	    		settings.init(img);
	    	
	    	$(img).load(function(){
	    		
	    		if(fadeInitEvent)
	    			settings.fadeInit(this);
	    		
	            $(this).animate(settings.cssComplete,
	            {
	            	duration	: settings.duration,
	            	easing		: settings.easing,
	            	complete	: function()
	            	{
	            		if(completeEvent)
	            		{
	            			settings.complete(img);
	            		}
	            	
	            	}
	            });
	            $(this).removeClass("preload");
	        }).attr('src', src);
	    	
	    });
	    
	}
	
})(jQuery);

/*
 * Luglio7 Image Cover
 * Copyright (c) 2011 Luca Bertaiola (luca@luglio7.com / www.luglio7.com)
 * Licensed under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 *
 */
 
/* !imageCover */
 
(function($)
{
	
	$.fn.imageCover = function(params)
	{
		// settings
	
		var settings = {
			init			: null,
			complete		: null
	    };
	    
	    if(typeof(params) == "object")
	    {
	    	$.extend(settings, params);
	    }
	    
	    // cover functions
	    
	    var cover = function(el)
	    {
	    	var width, height, dataWidth, dataHeight, parentWidth, parentHeight, imagePosition, parentPosition, ratio, left, top, diff, newWidth, newHeight;
	    	
	    	if(typeof(settings.init) === 'function')
	    	{
		    	settings.init(el);
	    	}
	    	
	    	// set vars
	    
	    	width 			= $(el).width();
		    height			= $(el).height();
		    parentWidth		= $(el).parent().width();
		    parentHeight	= $(el).parent().height();
		    
		    if(!$(el).data('data-width'))
		    	$(el).data('data-width', width);
		    	
		    if(!$(el).data('data-height'))
		    	$(el).data('data-height', height);
		    
		    dataWidth		= $(el).data('data-width');
		    dataHeight		= $(el).data('data-height');
		    
		    ratio			= dataWidth / dataHeight;
		    
		    imagePosition	= $(el).css("position");
		    parentPosition	= $(el).parent().css("position");
		    
		    // set css
		    
		    if((imagePosition !== 'relative') && (imagePosition !== 'absolute' ) && (imagePosition !== 'fixed'))
		    {
		    	$(el).css("position", "absolute");
		    }
		    
		    if((parentPosition !== 'relative') && (parentPosition !== 'absolute' ) && (parentPosition !== 'fixed'))
		    {
		    	$(el).parent().css("position", "relative");
		    }
		    
		    // resize horizontaly
		    
		    $(el).width(parentWidth);
		    $(el).height($(el).width() / ratio);
		    
		    newWidth = $(el).width();
		    newHeight = $(el).height();
		    
		    if(newHeight < parentHeight)
		    {
		    	diff = parentHeight - newHeight;
		    	$(el).height(parentHeight);
		    	$(el).width( newWidth + diff );
		    	
		    	newWidth	= $(el).width();
			    newHeight	= $(el).height();
		    }
		    
		    // center width
		    
		    if(newWidth > parentWidth)
		    {
		    	left = ((newWidth - parentWidth) / 2) * -1;
		    	$(el).css('left', left);
		    }
		    else
		    {
		    	$(el).css("left", 0);
		    }
		    
		    // center top
		    
		    if(newHeight > parentHeight && 1==2)
		    {
		    	top = ((newHeight - parentHeight) / 2) * -1;
		    	$(el).css('top', top);
		    }
		    else
		    {
		    	$(el).css("top", 0);
		    }
		    
		    if(typeof(settings.complete) === 'function')
	    	{
		    	settings.complete(el);
	    	}
		    
	    };;
	    
	    // loop elements
	    
	    $(this).each(function(index, el)
	    {
	    	cover(el);
	    	$(window).resize( function(){ cover(el) } );
	    	
	    });
	    
	}
	
})(jQuery);

/*
 * Luglio7 Focus Boxes
 * Copyright (c) 2011 Luca Bertaiola (luca@luglio7.com / www.luglio7.com)
 * Licensed under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 *
 */

/* !focusBoxes */

(function($) {
	$.fn.focusBoxes = function(params)
	{
	
		// vars
		
		var that = this;
		var settings = {
	      easing        : 'swing',
	      duration		: 750,
	      opacityMin	: 0.5,
	      opacityMax	: 1
	    };
	    
	    if(typeof(params) == "object")
	    {
	    	$.extend(settings, params);
	    }
		
		// functions
		
		var focusBoxesAnimate = function(element, eventName)
		{
			
			that.each(function(){
				if(element != this)
				{
					$(this).animate({
						"opacity" : (eventName === "out")? settings.opacityMax : settings.opacityMin
					}, {
						"easing" : settings.easing,
						"duration" : settings.duration,
						"queue" : false
					})
				}
			});
			
			if(typeof settings.callback === "function")
			{
				settings.callback(element, eventName);
			}
			
		};;
		
		// events
		
		this.each(function(){
			
			$(this).mouseover(function(){
				focusBoxesAnimate(this, "over");
			});
			
			$(this).mouseout(function(){
				focusBoxesAnimate(this, "out");
			});
			
		});
		
	};
})(jQuery);