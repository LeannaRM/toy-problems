<?php
 function wordcounting($wordstring)
{
	$words = explode(" ", $wordstring);
	
	//echo $words[0];
	//echo sizeof($words);

	for ($i = 1; $i <= sizeof($words); $i++) {
	 	echo $i;
	 	echo $words[$i];
	}

	return $words;
}


$input = 'It is rather for us, the living, we here be dedicated to the great task remaining before us.';

$result = wordcounting($input);

for ($i = 1; $i <= sizeof($result); $i++) {
    echo $result[$i];
}

?>