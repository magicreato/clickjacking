#! /bin/bash
#eg: Enter Domain Name : google.com
echo ""
read -p "Enter Domain Name : " dom
#html code
echo ""
clickjack () {
#writing to cj.html file
echo " <!Doctype html>
     	<head>
	<title>clickjacker.finder</title>
     	</head>
	<style>
	* {
	background: lightblue;
	color: black;
	}
	div {
	text-align: center;
	background: black;
        color: white;
	position: absolute;
    	top: 50%;
    	left: 50%;
    	transform:translate(-50%,-50%);
    	}
	</style>
	<body>
	<h1><u>Check Website clickjacking vulnerability</u></h1>
	<p>*Note:If the input website shows inside the box its vulnerable to clickjacking.</p><br><div>
	<iframe src="https://$dom" height="500" width="800" alt="Entered_website"><p>This website is not vulnerable</p></iframe>
	<p>- Task completed -</p></div>
	</body>
	</html> " > cj.html
}
#saved file name
	echo "File saved to cj.html"
	echo ""
#Executing command
if [[ -z $dom ]]; then
	echo "invalid syntax. please provide domain name"
	echo "Eg: example.com"
else
	clickjack
	open cj.html
	echo "--Task completed press ctrl+c to exit--"
fi
#Exiting
exit 0
