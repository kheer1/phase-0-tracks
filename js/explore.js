//We will be creating a funtion that reverses a string
//We'll need to use a for loop to do this

var str = "Hello World";
//var reverseStr

function reverseStr(str) 
{

	var revStr = "";

	for (var i = str.length - 1; i >= 0; i--) 
	{
		var temp = str[i];
		revStr = revStr + str[i];
	}

	return revStr;
}

if (8==8)
{
	console.log(reverseStr(str));
}


