<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1">


<form id="form_Main">

<field name="digit1" type="digits?length=2">
  <prompt bargein="false">Lets add two digit values together</prompt>
  <prompt>Please speak, or key in any two digit value</prompt>
  <filled>
  <log expr="'*** FILLED ***'"/>
  <log expr="'*** digit1 =' + digit1 + '***'"/>
  </filled>
</field>

<field name="digit2" type="digits?length=2">
  <prompt bargein="false">Great.</prompt>
  <prompt>Now speak, or key in the second two digit value</prompt>
  <filled>
  <log expr="'*** FILLED ***'"/>
  <log expr="'*** digit2 =' + digit2 + '***'"/>
  <assign name="callerID" expr="session.callerid"/>
  <submit next="https://raw.github.com/e-ojeda/vxml_test/master/vxml_asp/AddDigits.asp" namelist="digit1 digit2 callerID"/>
</filled>
</field>

</form>

</vxml>