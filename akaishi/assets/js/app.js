/* !app */

var app = {

    utils : {}

};

/* !utils.log */

app.utils.log = function(obj)
{

    obj = (typeof(obj) === 'object')? obj : {};

    // properties
    
    var that        = this;
    
    this.history    = [];
    this.maxRecords = (typeof(obj.maxRecords) === 'number')? obj.maxRecords : 50;
    
    // methods
    
    this.log = function(record)
    {
        that.history = that.history.reverse();
        that.history.push(record);
        that.history = that.history.reverse();
        
        if(that.history.length > that.maxRecords)
        {
            that.history.pop();
        };
        
        return that.history;
    }
    
    this.last = function()
    {
        if(that.history[0])
        {
            return that.history[0];
        }
        return false;
    }
    
}

/* !utils.loop */

app.utils.loop = function(obj)
{

    obj = (typeof(obj) === 'object')? obj : {};

    // properties
    
    var that        = this;
    this.min        = (typeof(obj.min) === 'number')?       obj.min : 0;
    this.max        = (typeof(obj.max) === 'number')?       obj.max : 10;
    this.index      = (typeof(obj.index) === 'number')?     obj.index : this.min;
    this.direction  = (typeof(obj.direction) === 'number')? obj.direction : 1;
    
    // methods
    
    this.verify = function()
    {
        // verify index
    
        if( (this.index < this.min) || (this.index > this.max) )
        {
            this.index = this.min;
        }
        
        // verify direction
        
        if((this.direction < 0) || (this.direction > 1) )
        {
            this.direction = 1;
        }
    }
    
    this.next   = function(set)
    {
        this.verify();
        
        var nextIndex;
        
        if(typeof(set) === 'undefined')
            set = true;
        
        if(!this.direction)
        {
            nextIndex = ((this.index - 1) < this.min)? this.max : this.index - 1;
        }
        else
        {
            nextIndex = ((this.index + 1) > this.max)? this.min  : this.index + 1;
        }
        
        if(set)
            this.index = nextIndex;
            
        return nextIndex;
    }
    
    this.last   = function()
    {
        this.verify();
        this.reverse();
        var lastIndex = this.next(false);
        this.reverse();
        
        return lastIndex;
    }
    
    this.reset  = function()
    {
        this.verify();
        this.index = this.min;
        
        return this.index;
    }
    
    this.reverse = function()
    {
        this.verify();
        this.direction = (this.direction == 1)? 0 : 1;
        
        return this.direction;
    }
    
    // verify properties on init
    
    this.verify();
    
}

/* !recursive call */

app.recursiveCall = function(event)
{
    for(var method in this)
    {
        if(typeof(this[method][event]) === 'function')
        {
            this[method][event]();
        }
    }
}

/* !jQuery events */

if( typeof(jQuery) === 'function' )
{
    jQuery(document).ready(function()
    {
        app.recursiveCall('onReady');
    });
    
    jQuery(window).load(function()
    {
        app.recursiveCall('onLoad');
    });
    
}