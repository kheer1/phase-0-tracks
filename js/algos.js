/*Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
1) go through the array with a for loop checking the length of each phrase in the array
2)keep track of the longest one, updating accordingly when you find a longer one, return the longest



*/
var longestStrings = ["red","blue car", "yellow yes", "green"];

function findLongestString (longestStrings)
{
	//var longestStrings = longestStrings;
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

console.log("The longest string within the array is:"+findLongestString(longestStrings));