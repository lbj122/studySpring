requirejs.config({
    baseUrl: '/js',
    paths:{
        'jquery' : 'common/jquery',
        'bootstrap' : 'common/bootstrap.min',
        'scrollUp' : 'common/jquery.scrollUp.min',
        'price-range' : 'common/price-range',
        'prettyPhoto' : 'common/jquery.prettyPhoto',
        'main' : 'common/main',
        'handlebars' : 'common/handlebars-v4.0.5',
        'goodsList' : 'getGoodsList'
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
        'handlebars' :{
        	deps: ['jquery'], 
            exports:'handlebars'
        }
    }
});
require([
	'bootstrap',
	'scrollUp',
	'price-range',
	'prettyPhoto',
	'main',
	'goodsList'
], function (a,b,c,d,e,goodsList) {
	getGoodsList = goodsList.getGoodsList;
	goodsList.getArtistList();
});