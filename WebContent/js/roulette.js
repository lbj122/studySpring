requirejs.config({
    baseUrl: '/js',
    paths:{
        'jquery' : 'common/jquery',
        'bootstrap' : 'common/bootstrap.min',
        'scrollUp' : 'common/jquery.scrollUp.min',
        'price-range' : 'common/price-range',
        'prettyPhoto' : 'common/jquery.prettyPhoto',
        'main' : 'common/main',
        'jqueryRotate' : 'common/jqueryRotate',
        'rotate' : 'rotate'
    },
    shim:{
        'bootstrap':{
            deps: ['jquery'], 
            exports:'bootstrap'
        },
        'scrollUp':{
            deps: ['jquery'], 
            exports:'scrollUp'
        },
        'price-range':{
            deps: ['jquery'], 
            exports:'price-range'
        },
        'prettyPhoto':{
            deps: ['jquery'], 
            exports:'prettyPhoto'
        },
        'main':{
            deps: ['jquery'], 
            exports:'main'
        },
        'jqueryRotate':{
            deps: ['jquery'], 
            exports:'jqueryRotate'
        },
        'rotate' : {
        	deps:['jqueryRotate'],
        	exports:'rotate'
        }
    }
});

requirejs( [
        'jquery',
        'bootstrap',
        'scrollUp',
        'price-range',
        'prettyPhoto',
        'main',
        'jqueryRotate',
        'rotate'
    ]
);