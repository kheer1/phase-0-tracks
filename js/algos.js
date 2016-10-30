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


console.log("The longest string within the array is:"+findLongestString(longestStrings));

console.log("Comparing two objects to see if they have at least one key value pair shared:"+shareOneKeyValuePair(firstObject,secondObject));



