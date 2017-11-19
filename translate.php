<!DOCTYPE html>
<html>
<body>

<h1>Henry Text</h1>

<?php
    if (isset($_GET['say']) && $_GET['say'] == 'true'){
        $read = exec("ruby biboBepisGithubb.rb '".$_GET["normText"]."'");
        echo $read;
        exec("ruby biboBepisGithubbSay.rb '".$_GET["normText"]."'");
    } else {
        echo exec("ruby biboBepisGithubb.rb '".$_GET["normText"]."'");
    }
?>

</body>
</html>