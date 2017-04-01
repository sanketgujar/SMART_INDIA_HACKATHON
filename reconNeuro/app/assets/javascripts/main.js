window.onload = function onLoad() {
    var bar = new ProgressBar.Line('#progress', {
        strokeWidth: 4,
        color: '#FCB03C',
        duration: 1000,
        easing: 'easeInOut',
        trailColor: '#eee',
  		trailWidth: 4,
  		svgStyle: {width: '100%', height: '100%'},
        text: {
		    style: {
			    color: '#999',
			    position: 'absolute',
			    right: '0',
			    top: '20px',
			    padding: 0,
			    margin: 0,
			    transform: null
		    },
		    autoStyleContainer: false
		},
	    from: {color: '#FFEA82'},
	    to: {color: '#ED6A5A'},
	    step: (state, bar) => {
	    	bar.setText((Math.round(bar.value() * 100)) + ' %');	  	}
    });

    bar.animate(0.5);

};
