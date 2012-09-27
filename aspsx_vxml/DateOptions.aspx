<?xml version="1.0"?>

<vxml version="2.0" xmlns="http://www.w3.org/2001/vxml">

<%@ Page Language="C#" CodeFile="DateOptions.aspx.cs" Inherits="_DateOptions" %>

<%Response.Cache.SetCacheability(HttpCacheability.NoCache);%>

<var name="Button" expr="''" />

<form>

	<nomatch>

		I Can't understand your input.

		<reprompt/>

	</nomatch>

	<noinput>

		you have entered nothing.

		<reprompt/>

	</noinput>

	<field name="DateOptions">

		<prompt>

			For checking today's date and Month press 1,for time press 2, for day press 3, otherwise simply hangup.

		</prompt>

		<grammar xml:lang="en-US" mode="dtmf" version="1.0" xmlns="http://www.w3.org/2001/06/grammar" tag-format="swi-semantics/1.0" root="Digits">

			<rule id="Digits" scope="public">

				<one-of>

					<item>1</item>

					<item>2</item>

					<item>3</item>

				</one-of>

			</rule>

		</grammar>

		<filled>

			<if cond="DateOptions=='1'">

				<assign name="Button" expr="'1'" />

				<submit next="<%=Response.ApplyAppPathModifier("Dayprompt.aspx") %>" namelist="Button"/>

			<elseif cond="DateOptions=='2'"/>

				<assign name="Button" expr="'2'" />

				<submit next="<%=Response.ApplyAppPathModifier("Dayprompt.aspx") %>" namelist="Button"/>

			<elseif cond="DateOptions=='3'"/>

				<assign name="Button" expr="'3'" />

				<submit next="<%=Response.ApplyAppPathModifier("Dayprompt.aspx") %>" namelist="Button"/>

			<else />

				<clear namelist="DateOptions"/>

				<throw event="nomatch" />

			</if>

		</filled>

	</field>

</form>

</vxml>