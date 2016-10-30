/*Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
1) go through the array with a for loop checking the length of each phrase in the array
2)keep track of the longest one, updating accordingly when you find a longer one, return the longest
*/
var longestStrings = ["red","blue car", "yellow yes", "green"];
var firstObject = {name: "greg", height: 6, 'color':"blue"};
var secondObject = {'name': "Kam", height: 8, color:"red",name: "greg"};

function findLongestString (longestStrings)
{
	tempWord = "";

	for (var i = 0; i < longestStrings.length; i++) 
	{
		if (tempWord.length < longestStrings[i].length)
		{
			tempWord = longestStrings[i];
		}
	}
	return tempWord;
}
/* write a function that takes two objects and checks to see if the objects share at least one key-value pair. 
1) send both objects into a funtion
2) have a temp value let to false because that's what will be returned
3) go through the first object and compare the first key and value with every key and value in the second object
4) continue down the first object until you've compared everything in the first with the second
5) as soon as you find one shared key-value pair return it, you don't need to keep going
*/

function shareOneKeyValuePair (firstObject, secondObject)
{
	shareValue = false;
	
	for (i in firstObject) 
	{
		for (j in secondObject) 
		{
			if (i == j && firstObject[i] == secondObject[j])
			{
				return shareValue = true;
			}
		}
	}
	return shareValue;
}
/*Write a function that takes an integer for length, and builds and returns an array of strings of the given length. 
setup a for loop that takes a number and uses it for the length, this will give you the length of the array
then randomly generate a number between 1 and 10, this will give you the length of each string
randomly generate a random letter, store that letter and keep adding until you've hit your random length for that string
add the completed word to the array
after the array is full, return the array
then send the array to your longest string in an array funtion to see what word was the longest
do that ten times.
*/
function buildRandomArray(number)
{
	var varyingLength = 0;
	var randomWordArray = [];
	var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

	for (var x = 0; x < number; x++) 
	{
		varyingLength = Math.floor(Math.random() * 10) + 1;
		text = "";
		for (var y = 0; y < varyingLength; y++) 
		{
			text += possible.charAt(Math.floor(Math.random() * possible.length));
		}
		randomWordArray[x] = text;
	}
    return randomWordArray;
}

var tempArray = [];

for (var i = 0; i < 10; i++) 
{
	tempArray = buildRandomArray(Math.floor(Math.random() * 10) + 5);
	console.log(tempArray);
	console.log("The longest string within the array is:"+findLongestString(tempArray));
	console.log("\n");
}

console.log("The longest string within the array is:"+findLongestString(longestStrings));

console.log("Comparing two objects to see if they have at least one key value pair shared:"+shareOneKeyValuePair(firstObject,secondObject));



