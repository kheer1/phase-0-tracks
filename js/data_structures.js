//Homework 7.2 Data Structures
//Release 0: create two arrays with colors and names then code to add a color and name
//Release 1: converted the two arrays into a Hash

var horseColor = ["red","blue", "yellow", "green"];
var horseName = ["Indy", "Jones", "Will", "Rick"];
var nameColorCombined = {};
//var nameColorCombined = 


addNameColor("Bill","white");
colorToHorse(horseName, horseColor);

function addNameColor(name, color)
{
	horseName.push(name);
	horseColor.push(color);
}

function colorToHorse(name, color)
{

	if (name.length == color.length)
	{
		for (var i = 0; i < name.length; i++) 
		{
			nameColorCombined[name[i]]= color[i];
		}
	}
	else
	{
		console.log("The Arrays are two different length");
	}
}

for(i in nameColorCombined)
{
	console.log ("The horse " + i, "is the color " + nameColorCombined[i] + "!");

}