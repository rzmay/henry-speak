<!DOCTYPE html>
<html>
<head>
    <meta name="authors" content="Physch and biggomega">
    <title>
        Henry Speak by Physch and biggomega
    </title>
    <style>
        body{
            box-sizing:border-box;
            text-align:center;
            margin:0;
        }
        .main{
            display:flex;
            text-align:center;
            margin-top:70px;
        }
        #logo{
            display:flex;
            width:40em;
            height:11em;
            justify-content:center;
            align-items:center;
            display: block;
            margin: 0 auto;
        }
        textarea{
            resize: none;
        }
        p1{
            font-family: "Comic Sans MS", cursive, sans-serif;
            
        }
        #bransbate{
            margin-top:0.5%;
            font-family: "Comic Sans MS", cursive, sans-serif;
            /*border-radius:0;
            border:1px solid black;*/
            transition:0.3s;
        }
        #bransbate:hover{
            color:red;
            /*border-color:red;*/
        }
        #bransbate:active{
            background-image:url(images/picklerick.png);
            background-size:contain;
            color:rgba(0,0,0,0);
        }
        #check{
            width:10%;
            box-sizing:border-box;
            position:relative;
            padding:0;
            margin:0;
            /*margin-left:58%;*/
            /*background-color:red;*/
        }
        #directbox{
            /*position:absolute;
            top:80.5%;
            left:14%;
            width:55%;*/
            margin:0;
            padding-right:1%;
            /*background-color:blue;*/
        }
        #bete{
            width:50%;
            /*position:absolute;
            top:2%;
            left:30%;*/
        }
        #boxyboy{
            position:absolute;
            top:10%;
            left:0%;
        }
        #directo{
            font-size:78%;
            font-family:"Comic Sans MS", sans-serif;
            font-weight:bolder;
            color:crimson;
            float:right;
            margin:0;
            margin-top:0.5%;
            padding:0;
        }
        .holdshit{
            display:flex;
            flex-direction:row;
            justify-content:center;
            width:100%;
        }
        textarea{
            border-radius:5%;
            padding:1%;
            border:2px solid crimson;
        }
        /*#directions{
            /*position:absolute;*/
            /*top:-2px;
        }*/
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: red;
        }

        li {
            margin-top: 0.5em;
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-family: "Comic Sans MS", sans-serif;
            font-size: 0.9em;
            transition: 0.3s;
            border-top-right-radius:30%;
            border-top-left-radius:30%;
        }

        li a:hover {
            background-color: white;
            color: red;
            transition: 0.3s;
        }
        li a.active {
            background-color: white;
            color: red;
        }
    </style>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
</head>
    <body>
        <ul>
          <li><a class="active">Home</a></li>
          <li><a href="src/comment.php">Contact</a></li>
          <li style="float:right"><a href="src/about.html">About</a></li>
        </ul>
        <div class="main">
            <img id="logo" src="src/images/beter-min.png" alt="🅱️ enry S🅱️ eak Logo" title="🅱️enry S🅱️eak Logo">
        </div>
        <p1>1 like = 10 free iphone</p1><br>
        <form action="home.php" method="get">
            <textarea name="input" cols="80" rows="15" style="margin-top:10px" placeholder="Enter text here" id="textField"><?php
    if (isset($_GET['say']) && $_GET['say'] == 'true'){
        echo exec("ruby src/biboBepisGithubb.rb '".$_GET["input"]."'");
        exec("ruby src/biboBepisGithubbSay.rb '".$_GET["input"]."'");
    } else {
        echo exec("ruby src/biboBepisGithubb.rb '".$_GET["input"]."'");
    }
?></textarea><br>
            <div class="holdshit">
                <div id="directbox">
                    <p1 id="directo">Enter any text and it will become something that our friend Henry would say.</p1>
                </div>
                <div id="check">
                    <input id="boxyboy" type="checkbox" name='say' value='true'>
                    <img id="bete" src="images/beterSay.png"> 
                </div>
                <input id=bransbate type="submit" value="&#127345;rans&#127345;ate">
            </div>
            
        </form>
    </body>
</html>