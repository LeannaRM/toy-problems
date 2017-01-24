function rollthedies(ndm){
    var valuesarray = ndm.split("d");
    var numRolls = parseInt(valuesarray[0]);
    var highestValue = parseInt(valuesarray[1]);
    var diceRollsArray = [];
    for (var i=0; i < numRolls; i++){
        var diceroll = Math.random()*highestValue;
        diceroll = Math.round(diceroll);
        diceRollsArray.push(diceroll);
    }
    return diceRollsArray;
}

var input1 = "2d20";
var result1 = rollthedies(input1);
console.log(result1);

var input2 = "4d6";
var result2 = rollthedies(input2);
console.log(result2);
