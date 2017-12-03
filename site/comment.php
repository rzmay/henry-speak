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
            margin-top:25px;
            margin-bottom:2em;
        }
        #logo{
            display:flex;
            width:400px;
            height:105px;
            justify-content:center;
            align-items:center;
            display: block;
            margin: 0 auto;
        }
        textarea{
            resize: none;
        }
        p1, h1{
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
        #descrip{
            border-radius:5%;
            padding:1%;
            border:2px solid crimson;
            margin-left: 15%;
            margin-right: 15%;
            margin-bottom:2em;
        }
        #minAbout{
            border-radius:5%;
            padding:1%;
            border:2px solid #000080;
            margin-left: 15%;
            margin-right: 15%;
            margin-bottom:7em;
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
        #textLink {
            color: red;
            text-decoration: none;
            transition: 0.3s;
        }
        #textLink:hover {
            border-bottom: 2px solid blue;
        }
        .twitter-tweet {
            border: 2px solid blue;
            float: left;
        }
        #comments {
            padding: 4em;
            padding-top:0em;
            font-family:"Comic Sans MS", sans-serif;
            margin-bottom: 0px;
        }
    </style>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
</head>
    <body>
        <ul>
          <li><a href="home.php">Home</a></li>
          <li><a class="active">Contact</a></li>
          <li style="float:right"><a href="about.html">About</a></li>
        </ul>
        <?php

        ?> 
        <div class="main">
            <img id="logo" src="images/beter-min.png" alt="🅱️ enry S🅱️ eak Logo" title="🅱️enry S🅱️eak Logo">
        </div>
        <form id="comments" action="comment.php" method="post">
            Name: <textarea maxlength="20" name="name" cols="15" rows="1" style="margin-top:10px" placeholder="Enter text here" id="textField"></textarea>
            <br>
            Comment Title: <textarea maxlength="20" name="title" cols="30" rows="1" style="margin-top:10px" placeholder="Enter text here" id="textField"></textarea>
            <br>
            <textarea maxlength="1500" name="comment" cols="80" rows="7" style="margin-top:10px" placeholder="Enter comment here" id="textField"></textarea>
            <br>
            <input type="submit" value="Submit">        
        </form>
        <iframe src="commentList.html" style="margin-top:0px;border:2px solid red;border-radius:5%;width:50em;height:30em;"></iframe>
    </body>
</html>
