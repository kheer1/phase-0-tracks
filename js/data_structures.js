//Homework 7.2 Data Structures
//Release 0: create two arrays with colors and names then code to add a color and name


var horseColor = ["red","blue", "yellow", "green"];
var horseName = ["Indy", "Jones", "Will", "Rick"];



addNameColor("Bill","White");

console.log(horseColor,horseName);

function addNameColor(name, color)
{
	horseName.push(name);
	horseColor.push(color);
}