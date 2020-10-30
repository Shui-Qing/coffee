var items = document.getElementsByClassName('item');
var points = document.getElementsByClassName('point');
var getPreBtn = document.getElementById("getPre");
var getNextBtn = document.getElementById("getNext");

var index = 0;
var time = 0;

var clearActive = function() {
	for (var i = 0; i < items.length; i++) {
		items[i].className = 'item';
		points[i].className = 'point';
	}
}

var getIndex = function() {
	clearActive();
	points[index].className = 'point active';
	items[index].className = 'item active';
}

var getNext = function() {
	if (index < items.length - 1) {
		index++;
	} else {
		index = 0;
	}
	getIndex();
}

var getPre = function() {
	if (index == 0) {
		index = items.length - 1;
	} else {
		index--;
	}
	getIndex();
}

// getNextBtn.addEventListener('click',function(){
// 	getNext();
// })

// getPreBtn.addEventListener('click',function(){
// 	getPre();
// })

for (var i = 0; i < points.length; i++) {
	points[i].addEventListener('click', function() {
		var pointIndex = this.getAttribute('data-index');
		index = pointIndex;
		getIndex();
		time = 0;
	})
}

setInterval(function() {
	time++;
	if (time == 20) {
		getNext();
		time = 0;
	}
}, 150) //2秒