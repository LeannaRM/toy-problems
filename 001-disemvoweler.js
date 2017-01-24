function disemvowel(str) {
    var newstring = "";
    for(var i = 0; i< str.length; i++){
        if (str[i]== "a" || str[i]=="e" || str[i] == "i" || str[i] == "o" || str[i] == "u" || str[i]==" "){}
        else{
            newstring = newstring + str[i];
        }
    }
  return newstring;
}

var testInput1 = "all those who believe in psychokinesis raise my hand";
var result1    = disemvowel(testInput1);

var testInput2 = "did you hear about the excellent farmer who was outstanding in his field";
var result2    = disemvowel(testInput2);

if (result1 === "llthswhblvnpsychknssrsmyhnd"){
    console.log("Test #1 Passed!");
}
else {
    console.log("Test #1 Failed!");
    console.log("Tried with 'all those who believe in psychokinesis raise my hand'");
    console.log("Expected to get: 'llthswhblvnpsychknssrsmyhnd'");
    console.log("Instead, got: " + result1);
}

console.log("\nMoving onto Test #2...\n");

if (result2 === "ddyhrbtthxcllntfrmrwhwststndngnhsfld"){
    console.log("Test #2 Passed!");
}
else {
    console.log("Test #2 Failed!");
    console.log("Tried with 'did you hear about the excellent farmer who was outstanding in his field'");
    console.log("Expected to get: 'ddyhrbtthxcllntfrmrwhwststndngnhsfld'");
    console.log("Instead, got: " + result2);
}