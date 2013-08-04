<html>

<head>
	<meta name="layout" content="main"/>
	<title>Home</title>
</head>

<body>

	<h1>Home</h1>

	<table>
	<thead>
	<tr>
		<g:sortableColumn title="Name" property="name" params="${params}"/>
		<g:sortableColumn title="Tripped" property="tripped" params="${params}"/>
		<g:sortableColumn title="Trigger" property="trigger" params="${params}"/>
		<g:sortableColumn title="Count" property="count" params="${params}"/>
		<th>Messages</th>
		<th>&nbsp;</th>
	</tr>
	</thead>
	<tbody>
	<g:each in="${breakers}" var="cb">
	<tr>
		<td>${cb.name}</td>
		<td>${cb.tripped}</td>
		<td>${cb.trigger}</td>
		<td>${cb.count}</td>
		<td><g:link action="messages" id="${cb.id}">${cb.messages.size()}</g:link></td>
		<td><g:link action="reset" id="${cb.id}">reset</g:link></td>
	</tr>
	</g:each>
	</tbody>
	</table>

	<hr/><br/>

	Throw exception on: <g:link action="execute" params="${[name:'breaker1']}">breaker1</g:link><br/><br/>
	Throw exception on: <g:link action="execute" params="${[name:'breaker2']}">breaker2</g:link><br/><br/>
	Throw exception on: <g:link action="execute" params="${[name:'breaker3']}">breaker3</g:link><br/><br/>


</body>

</html>
