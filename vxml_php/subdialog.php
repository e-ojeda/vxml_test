<?php
header("Content-type: text/xml");
$random1 = "green";
$random2 = "blue";
$random3 = "yellow";
?>

<vxml version="2.0">
  <form>
    <block>
      <var name="stuff1" expr="'<?php echo($random1)?>'"/>
      <var name="stuff2" expr="'<?php echo($random2)?>'"/>
      <var name="stuff3" expr="'<?php echo($random3)?>'"/>
      <return namelist="stuff1 stuff2 stuff3"/>
    </block>
  </form>
</vxml>