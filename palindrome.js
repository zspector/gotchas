// 5. Palindromes:
// Problem Statement: Given a string or a number, see if it is a palindrome or not without using the .reverse method.
// (A palindrome is a string that is the same when reversed, such as 'racecar' or 'No x in Nixon')

// i.e.: word = 'racecar', answer = true
// word = 'No x in Nixon', answer = true
// word = 'Hello', answer = false


function palindrome(string) {
	// guard clause
	string.replace(' ', '');
	if (string.length == 1)  return true;
	if (string.length == 2 && string[0] == string[1]) {
		return true;
	}
	var last = string.length - 1;
	if (string[0] == string[last]) {
		string.slice(1, string.length -1);
		return palindrome(string);
	} else {
		return false;
	}
}

