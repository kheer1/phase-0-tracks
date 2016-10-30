//Homework 7.2 Data Structures
//Release 0: create two arrays with colors and names then code to add a color and name
//Release 1: converted the two arrays into a Hash

var horseColor = ["red","blue", "yellow", "green"];
var horseName = ["Indy", "Jones", "Will", "Rick"];
var nameColorCombined = {};
//var nameColorCombined = 


addNameColor("Bill","white");
colorToHorse(horseName, horseColor);

//funtion to add a name and color
function addNameColor(name, color)
{
	horseName.push(name);
	horseColor.push(color);
}

//A funtion that creates a hash with name as key and color as value and checks to see if the arrays have hte same length
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
//for loop to output all the data of the horses
for(i in nameColorCombined)
{
	console.log ("The horse " + i, "is the color " + nameColorCombined[i] + "!");

}

//A class in javascript, not very pretty
function Car(model, color, topSpeed) 
{
	console.log("Your new car:", this);
	
	// setup up the model, color, and topspeed
	this.model = model;
	this.color = color;
	this.topSpeed = topSpeed;
	
	// created a funtion to see to if it's a big engine or not
	this.engine = function(vEight) 
	{ 
		if (vEight == true) 
		{
			console.log("VROOOM VROOOOOMM!!!!");
		}
		else
		{
			console.log("vroom vrooom....");
		}
	}
	console.log("Your car is ready");
}

//driver data
console.log("----\n\n");
var firstCar = new Car("BMW", "Red", 145);
console.log("The model of your car is:" + firstCar.model, "with a color of:" + firstCar.color, "and a top speed of:" + firstCar.topSpeed);
firstCar.engine(true);

console.log("----\n\n");
var firstCar = new Car("Saab", "Blue", 120);
console.log("The model of your car is:" + firstCar.model, "with a color of:" + firstCar.color, "and a top speed of:" + firstCar.topSpeed);
firstCar.engine(false);
