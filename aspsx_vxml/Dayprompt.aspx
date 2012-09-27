<?xml version="1.0"?>
<vxml version="2.0" xmlns="http://www.w3.org/2001/vxml">

<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Dayprompt.aspx.cs" Inherits="_Dayprompt" %>
<%Response.Cache.SetCacheability(HttpCacheability.NoCache);%>

<%
    string Button = HttpContext.Current.Request.QueryString.Get("Button");
    string prompt = "";
    string date = "";
    int n=myVxmlCode(ref prompt, ref date,Button);  
%>

<form>
<%if (n==1)
  {
      %>
      <block>
         <prompt>
         <%=prompt%><break strength="small"/>
         <say-as interpret-as="date" format="md"><%=date %></say-as>.
         </prompt>
      </block>    
  <%
  }
    else if (n ==2)
    { 
        %>    
      <block>
         <prompt>
         <%=prompt%><break strength="small"/>
         <say-as interpret-as="duration" format="hms"><%=date %></say-as>.
         </prompt>
      </block> 
  <%
    }
  else
  { %>
      <block>
         <prompt>
         <%=prompt%><break strength="small"/><%=date %>.
         </prompt>
      </block> 
  <%
    } %>
    <block >
       <prompt>Thankyou for Calling GoodBye !</prompt>
        <disconnect/>
    </block> 
</form>
</vxml>