<?php
//grab each digit and callerID from our submitted namelist
$digit1 = $_REQUEST["digit1"];
$digit2 = $_REQUEST["digit2"];
$callerID = $_REQUEST["callerID"];

header('Cache-Control: no-cache');

//get the sum of our digits
$digitTotal = $digit1 + $digit2;

echo("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
?>
<vxml version="2.0">

<form id="form_main">
<block>
  <prompt>
    <?php echo $digit1?> plus <?php echo $digit2?> equals <?php echo $digitTotal?>.
    <break/>
  </prompt>

  <prompt>
    Just for kicks, let's count up to the total.
    <break/>
<?php
  for ($i=1; $i<=$digitTotal; $i++)
  {
    echo $i . " mississippi ";
  }
?>
    <break/>
  </prompt>

  <prompt>
    See ya later, <say-as interpret-as="telephone"><?php echo $callerID?></say-as>.
  </prompt>

</block>
</form>

</vxml>