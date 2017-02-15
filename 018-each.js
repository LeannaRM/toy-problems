function each(array,functionname) {
	for (var i=0;i<array.length;i++) {
		functionname(array[i]);
	}
}

var names = ["Sumeet", "Beth", "Dan", "Mindy"]

each(names, function(n){
	console.log("Isn't " + n + " just great?");

});