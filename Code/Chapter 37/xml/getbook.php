<?php
$q=$_GET["q"];$xmlDoc = new DOMDocument();
$xmlDoc->load("bookstore.xml");$x=$xmlDoc->getElementsByTagName('Title');
for ($i=0; $i<=$x->length-1; $i++)
{
	//Process only element nodes
	if ($x->item($i)->nodeType==1)
	{
		if ($x->item($i)->childNodes->item(0)->nodeValue == $q)
		{ 
			$y=($x->item($i)->parentNode);
		}
	}
}
$book=($y->childNodes);for ($i=0;$i<$book->length;$i++)
{ 
	//Process only element nodes
	if ($book->item($i)->nodeType==1)
	{ 
		echo($book->item($i)->nodeName);
		echo(": ");
		echo($book->item($i)->childNodes->item(0)->nodeValue);
		echo("<br />");
	} 
}
?>
