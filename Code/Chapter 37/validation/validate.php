<?php
function validate($name)
{
	if( $name== ' ')
	{
		return "Please enter any username";
	}
	if(strlen($name) < 3)
	{
		return "Username is too short";
	}
	switch($name)
	{
		case 'tom':
		case 'jerry':
		case 'pop':
		case 'caren':
		return "Username already exists.";
	}
	return "Username is valid.";
}
echo validate(trim($_REQUEST["name"]));
?>
