var ordinals = ["first", "second", "third", "fourth", "fifth", "sixth", 
				"seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"];
var objects = ["Partridge in a Pear Tree", "Turtle Doves", "French Hens",
				"Calling Birds", "Golden Rings", "Geese a Laying", 
				"Swans a Swimming", "Maids a Milking", "Ladies Dancing", 
				"Lords a Leaping", "Pipers Piping", "Drummers Drumming"];


for(var i = 0; i<12; i++){
	var day = i + 1;
	console.log("On the " + ordinals[i] + " day of Christmas\nmy true love sent to me:");
	for (var j = day; j>1; j--){
		console.log(j + " " + objects[j - 1]);
	}
	console.log("\n");
}