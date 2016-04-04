/* !vars */

app.vars = {};
app.vars.currencySymbol = null;

/* !slider */

app.slider = {

    vars : {
        delay           : 7500,
        duration        : 500,
        stopAnimation   : false,
        timeout         : null,
		productUrl		: []
    },
    
    elements : {},
    
    onReady : function()
    {
        if(document.getElementById('home-slider'))
        {
            // elements
            
            app.slider.elements.indexes     = $("#home-slider-bottom-indexes");
            app.slider.elements.arrowLeft   = $("#home-slider-bottom-left");
            app.slider.elements.arrowRight  = $("#home-slider-bottom-right");
        
            // vars
                        
            app.slider.vars.totImages = $("#home-slider-photo .home-slider-photo").length;
            
            app.slider.elements.indexes.empty();
            if(app.slider.vars.totImages > 1)
            {
                // set loop
                
                app.slider.vars.loop = new app.utils.loop({ min : 0, max : app.slider.vars.totImages - 1 });

				// set product link
				
				$('#home-slider-photo-info').attr('href', app.slider.vars.productUrl[0]);
            
                for(var i = 0; i < app.slider.vars.totImages; i++)
                {
                    app.slider.elements.indexes.append('<a href="javascript:void(0)" rel="slider:'+ i +'" class="home-slider-bottom-index"></a>');
                }
                
                app.slider.elements.indexes.find('a:eq(0)').addClass('home-slider-bottom-index-sel');
                
                // click
                
                app.slider.elements.indexesLinks = $(".home-slider-bottom-index");
                app.slider.elements.indexesLinks.click(function(e)
                {
                    e.preventDefault();
                    clearTimeout(app.slider.vars.timeout);
                    var index = parseInt($(this).attr("rel").replace(/slider:/, ''));
                    app.slider.change(index);
                });
                
                // arrows click
                
                app.slider.elements.arrowLeft.click(function(e)
                {
                    e.preventDefault();
                    clearTimeout(app.slider.vars.timeout);
                    app.slider.vars.loop.direction = 1;
                    app.slider.change();
                });
                
                app.slider.elements.arrowRight.click(function(e)
                {
                    e.preventDefault();
                    clearTimeout(app.slider.vars.timeout);
                    app.slider.vars.loop.direction = 0;
                    app.slider.change();
                });
                
                // set timeout
                
                app.slider.setTimeout();
            }
        }
    },
    
    setTimeout: function()
    {
        app.slider.vars.timeout = setTimeout(function(){app.slider.change();}, app.slider.vars.delay);
    },
    
    change: function(i)
    {
        if(!app.slider.vars.stopAnimation)
        {
            app.slider.vars.stopAnimation = true;
            
            var setIndex = false;
            if(typeof(i) !== 'undefined')
            {
                if(i !== app.slider.vars.loop.index)
                {
                    setIndex = true;
                }
            }
            
            var index     = app.slider.vars.loop.index;
            var nextIndex = (setIndex)? i : app.slider.vars.loop.next(false);
            
            // animate images
            
            $("#home-slider-photo-"+index).animate({
                'opacity'   : 0
            }, {
                'duration'  : app.slider.vars.duration,
                'easing'    : 'swing'
            });
            
            $("#home-slider-photo-"+nextIndex).css({
                'z-index'   : 3,
                'display'   : 'block',
                'opacity'   : 0
            }).animate({
                'opacity'   : 1
            }, {
                'easing'    : 'swing',
                'duration'  : app.slider.vars.duration,
                'complete'  : function()
                {
					// change product url
					
					$('#home-slider-photo-info').attr('href', app.slider.vars.productUrl[nextIndex]);
	
                    $(this).css('z-index', 2);
                    $("#home-slider-photo-"+index).css({
                        'z-index'   : 1,
                        'display'   : 'none'
                    });
                    
                    app.slider.vars.loop.index = nextIndex;
                    app.slider.vars.stopAnimation = false;
                    app.slider.setTimeout();
                    
                    // change index
            
                    app.slider.elements.indexesLinks.removeClass('home-slider-bottom-index-sel');
                    $(app.slider.elements.indexesLinks[app.slider.vars.loop.index]).addClass('home-slider-bottom-index-sel');
                    
                }
            });
            
            // animate prices
            
            $("#home-slider-photo-price-"+index).animate({
                'opacity'   : 0
            }, {
                'duration'  : app.slider.vars.duration,
                'easing'    : 'swing'
            });
            
            $("#home-slider-photo-price-"+nextIndex).css({
                'z-index'   : 3,
                'display'   : 'block',
                'opacity'   : 0
            }).animate({
                'opacity'   : 1
            }, {
                'easing'    : 'swing',
                'duration'  : app.slider.vars.duration
            });
            
            // animate descriptions
            
            $("#home-slider-description-"+index).animate({
                'opacity'   : 0
            }, {
                'duration'  : app.slider.vars.duration,
                'easing'    : 'swing'
            });
            
            $("#home-slider-description-"+nextIndex).css({
                'z-index'   : 3,
                'display'   : 'block',
                'opacity'   : 0
            }).animate({
                'opacity'   : 1
            }, {
                'easing'    : 'swing',
                'duration'  : app.slider.vars.duration
            });
            
        }
    }

}

/* !isotope */

app.isotope = {

    vars : {
        duration             : 500,
        deelay               : 2500,
        currentProduct       : null,
        homeFeaturedImages   : [],
        homeFeaturedProducts : [],
        timeout              : null
    },
    
    elements : {
        container   : null,
        items       : null
    },

    onLoad : function()
    {
        if(document.getElementById('home-featured'))
        {
            
            app.isotope.elements.container  = $("#home-featured");
            app.isotope.elements.elements   = $(".home-featured-item");
            
            app.isotope.elements.container.isotope({
                layoutMode      : 'masonry',
                masonry         : {
                    columnWidth : 168
                },
                itemSelector    : '.home-featured-item',
                animationEngine : 'best-available'
            });
            
            // click
            
            app.isotope.elements.elements.click(function()
            {
                var that = this;
                
                app.isotope.removeBox(this);
                app.isotope.elements.elements.each(function(index, el)
                {
                    if(el === that)
                    {
                        // hide thumb
                        
                        $(that).find('.home-featured-item-thumb').stop().animate({
                            opacity    : 0
                        }, {
                            duration   : 200,
                            easing     : "swing",
                            complete   : function()
                            {
                               $(this).css('display', 'none');
                            }
                        });
                        
                        // resize box
                        
                        var images = $(this).find('.home-featured-item-content img');
                    
                        if(!images.length)
                        {
                            $(this).animate({
                                width      : 308,
                                height     : 308
                            },{
                                duration   : 100,
                                easing     : "swing",
                                complete   : function()
                                {
                                    app.isotope.elements.container.isotope('reLayout');
                                    app.isotope.loadBox(this);
                                }
                            });
                        }
                    }
                    else
                    {
                        var width   = 140;
                        var height  = 140;
                        var img     = $(el).find("img:eq(0)");
                        
                        if(img.length)
                        {
                            height  = img.height();
                            width   = img.width();
                        }
                        
                        $(el).stop().animate({
                            width      : width,
                            height     : height
                        },{
                            duration   : 100,
                            easing     : "swing",
                            complete   : function()
                            {
                                var thumb = $(this).find('.home-featured-item-thumb');
                                thumb.css('display', 'block');
                                thumb.animate({
                                    opacity     : 1
                                }, {
                                    duration   : 200,
                                    easing     : "swing"
                                });
                            }
                        });
                    }
                });
                
            });
            
        }
    },
    
    loadBox: function(el)
    {
        
        var productId = parseInt($(el).attr("id").replace(/home-featured-item-id:/,''));
        
        if(app.isotope.vars.currentProduct !== productId)
        {
            app.isotope.vars.currentProduct = productId;
        
            // content box
            
            $(el).find('.home-featured-item-thumb:eq(0)').after('<div class="home-featured-item-content"></div>');
            var itemContent = $('.home-featured-item-content');
            
            // load Images
            
            if(typeof(app.isotope.vars.homeFeaturedImages[productId]) === 'object')
            {
                if(app.isotope.vars.homeFeaturedImages[productId].constructor === Array)
                {
                    var productImages   = app.isotope.vars.homeFeaturedImages[productId];
                    
                    if(productImages.length)
                    {
                        var img_html = '<img src="<img:url>" alt="" class="preload" />';
                        for(var i = 0; i < productImages.length; i++)
                        {
                            itemContent.append(img_html.replace(/\<img\:url\>/, productImages[i]));
                        }
                        app.preload.process('img.preload', function(el)
                        {
                            app.isotope.setBoxSlide();
                        });
                        
                    }
                }
            }
            
            if(productId in app.isotope.vars.homeFeaturedProducts)
            {
                itemContent.append('<a href="'+ app.isotope.vars.homeFeaturedProducts[productId].url +'" class="home-featured-item-content-description">'+ app.isotope.vars.homeFeaturedProducts[productId].name +'</a>');
                itemContent.append('<div class="collection-product-description-price"><span>'+app.vars.currencySymbol+'</span>'+ app.isotope.vars.homeFeaturedProducts[productId].price + '</div>');
            }
        }
        
    },
    
    removeBox : function(el)
    {
        
        var productId = parseInt($(el).attr("id").replace(/home-featured-item-id:/,''));
        if(app.isotope.vars.currentProduct !== productId)
        {
            app.isotope.vars.loop = null;
            clearTimeout(app.isotope.vars.timeout);
            $('.home-featured-item-content').remove();
        }
    },
    
    setBoxSlide: function()
    {
    
        // vars
        
        var images      = $('.home-featured-item-content img');
        var itemContent = $('.home-featured-item-content');
        app.isotope.vars.loop = new app.utils.loop({
            min : 0,
            max : images.length - 1
        });
        
        images.each(function(index, el)
        {
            if(index == 0)
            {
                var height = $(el).height();
                app.isotope.resizeContentBox(height);
                
                $(el).css({
                    'z-index' : 1
                });
                
            }
            else
            {
                $(el).css({
                    'display' : 'none',
                    'z-index' : 2
                });
            }
        });
        
		if(images.length > 1)
		{
			clearTimeout(app.isotope.vars.timeout);
	        app.isotope.setTimeout();
		}
        
    },
    
    boxSlideSwitch: function()
    {
        var index     = app.isotope.vars.loop.index;
        var nextIndex = app.isotope.vars.loop.next(false);
        var images    = $('.home-featured-item-content img');
        
        $(images[nextIndex]).css({
            'z-index' : 2,
            'opacity' : 0,
            'display' : 'block'
        });
        
        $(images[index]).css({
            'z-index'  : 1
        });
        
        $(images[nextIndex]).animate({
            'opacity'  : 1
        }, {
            'duration' : 500,
            'easing'   : 'swing',
            'complete' : function()
            {
                var height = $(this).height();
                app.isotope.resizeContentBox(height);
            }
        });
        
        $(images[index]).animate({
            'opacity'  : 0
        }, {
            'duration' : 500,
            'easing'   : 'swing',
            'complete' : function()
            {
                $(this).css('display', 'none');
                app.isotope.setTimeout();
				if(app.isotope.vars.loop)
				{
					app.isotope.vars.loop.next();
				}
            }
        });
        
    },
    
    setTimeout: function()
    {
        app.isotope.vars.timeout = setTimeout(function()
        {
            app.isotope.boxSlideSwitch();
        }, app.isotope.vars.deelay);
    },
    
    resizeContentBox: function(height)
    {
        var itemContent  = $('.home-featured-item-content');
        var parentHeight = height + 20;
        
        itemContent.parent().animate({
            height      : parentHeight
        }, {
            easing      : 'easeOutBack',
            duration    : 150,
            complete    : function()
            {
                app.isotope.elements.container.isotope('reLayout');
            }
        });
        
        itemContent.animate({
            height      : height
        }, {
            easing      : 'easeOutBack',
            duration    : 150
        });
    }

};

/* !chosen */

app.chosen = {

    onLoad : function()
    {
        $('select').chosen({ allow_single_deselect : true }).change(function()
		{
			
			// product page
			
			if(this.id === 'product-image-buy-models-select')
			{
				var variant_id = this.value;
				if(variant_id)
				{
					var price = $("#product-image-buy-models-select-option-" + variant_id).attr('rel').replace(/price\:/,'');
					$("#product-image-price-value").text(price);
				}
			}
			
			// collection page
			
			var dropdown = $(this);
			var selector = 'option[value="'+ this.value +'"]';
			var option   = dropdown.find(selector);
			
			if(option.length)
			{
				if(option.attr('id'))
				{
					var option_value = option.attr('id').replace(/collection-top-filter-url\:/, '');
					if(option_value.substr(0,1) === '/')
					{
						window.location = option_value;
					}
				}
			}
			
		});
    }

};

/* !preload */

app.preload = {

    onReady : function()
    {
        app.preload.process('img.preload');
    },
    
    process : function(selector, fadeInit)
    {
        $(selector).imagePreload({
            easing : 'easeInOutExpo',
            duration : 1000,
			fadeInit : function(el)
			{
			    if(typeof(fadeInit) === 'function')
			    {
			        fadeInit(el);
			    }
			}
        });
    }

};

/* !focusBoxes */

app.focusBoxes = {

    onReady : function()
    {
		var focusBoxes = true;
		if($.browser.msie)
		{
			focusBoxes = (parseInt($.browser.version) < 9)? false : true;
		}
		if(focusBoxes)
		{
			app.focusBoxes.process('.focus-box');
		}
    },
    
    process : function(selector)
    {
        $(selector).focusBoxes({
            easing      : 'easeInOutExpo',
            duration    : 750,
            opacityMin  : .25
        });
    }

};

/* !twitter */

app.twitter = {
	
	data : null,
	
	callback : function(data)
	{
		app.twitter.data = data;
	},
	
	onReady: function()
	{
		if(document.getElementById('bottom-box-twitter-socials'))
		{
			var tweet     = app.twitter.data[0].text;
			var tweetDate = new Date(app.twitter.data[0].created_at);
			var DateStr   = (tweetDate.getMonth() + 1) + '/' + tweetDate.getDate() + '/' + tweetDate.getFullYear();
			
			$("#bottom-box-twitter-socials cite").text(tweet);
		}
	}
	
}

/* !list */

app.list = {
	
	onReady : function()
	{
		$("ul.list li:odd").addClass('alt');
	}
	
}

/* !product */

app.product = {
	
	onReady: function()
	{
		if(document.getElementById("product-image-buy-link"))
		{
			$("#product-image-buy-link").click(function(e)
			{
				e.preventDefault();
				$(this).parent().submit();
			});
		}
	}
	
}

/* !shadowbox */

app.shadowbox = {
	
	onReady: function()
	{
		if(typeof(Shadowbox) === 'object')
		{
			Shadowbox.init();
		}
	}
	
}

/* !addToCartFormSubmit  */

app.addToCartFormSubmit = {
    
    onReady: function()
    {
        if(document.getElementById('product-image-buy'))
        {
            $('#product-image-buy').submit(function(e)
            {
                //e.preventDefault();
                if(!$('#product-image-buy-models-select')[0].value)
                {
                    return false;
                }
            });
        }
    }
    
}

app.recursiveCall('onInit');