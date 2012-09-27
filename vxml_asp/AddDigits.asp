<%
Dim digit1, digit2, digitTotal, callerID

//get int versions of each digit
digit1 = CInt(Request("digit1"))
digit2 = CInt(Request("digit2"))

//get the sum of our digits
digitTotal = digit1 + digit2

//grab callerID from our submitted namelist
callerID = Request("callerID")
%>
<?xml version="1.0" encoding="UTF-8"?>
<vxml version="2.1">

<form id="form_main">
<block>
  <prompt>
    <%=digit1%> plus <%=digit2%> equals <%=digitTotal%>.
      <break/>
  </prompt>

  <prompt>
    Just for kicks, let's count up to the total.
      <break/>
<%
Dim i
For i = 1 To digitTotal
Response.Write( i & " mississippi " )
Next
%>
<break/>
  </prompt>

  <prompt>
    See ya later, <say-as interpret-as="telephone"><%=callerID%></say-as>.
  </prompt>

</block>
</form>

</vxml>