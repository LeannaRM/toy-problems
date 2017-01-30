function anagramsorter(stringpair){
	var firstword = stringpair[0].replace(/ /g, "");
	var secondword = stringpair[1].replace(/ /g, "");

	for (var i = 0; i < firstword.length; i++){
		while (check == true) {
			var character = firstword(i);
			var check = secondword.includes(character);
			secondword = secondword.replace(character, "");
		}
	}
	return secondword;
}

function anagramchecker(secondwordwhatsleft){

	if (secondwordwhatsleft == ""){
		return true;
	}
	else
		return false;
	
}

var input1 = ["wisdom", "mid sow"];
var input2 = ["Seth Rogan", "Gathers No"];
var input3 = ["Reddit", "Eat Dirt"];
var input4 = ["Schoolmaster", "The classroom"];
var input5 = ["Astronomers", "Moon starer"];
var input6 = ["Vacation Times", "I'm Not as Active"];

var result1 = anagramchecker(anagramsorter(input1));
var result2 = anagramchecker(anagramsorter(input2));
var result3 = anagramchecker(anagramsorter(input3));
var result4 = anagramchecker(anagramsorter(input4));
var result5 = anagramchecker(anagramsorter(input5));
var result6 = anagramchecker(anagramsorter(input6));

console.log(result1);
console.log(result2);
console.log(result3);
console.log(result4);
console.log(result5);
console.log(result6);