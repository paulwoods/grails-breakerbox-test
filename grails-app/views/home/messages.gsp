<html>

<head>
	<meta name="layout" content="main"/>
	<title>Messages</title>
	<style>
	.message-trace {
		font-size: 0.5em;
	}
	</style>
</head>

<body>

	<h1>Messages for ${breaker.name}</h1>

	<table>
	<thead>
	<tr>
		<th>#</th>
		<th>Name</th>
		<th>Date</th>
	</tr>
	</thead>
	<tbody>
	<g:each in="${breaker.messages}" var="message">
	<tr>
		<td class="message-id">${message.id}</td>
		<td class="message-name">${message.name}</td>
		<td class="message-date">${message.dateCreated}</td>
	</tr>
	<tr>
		<td class="message-trace" colspan="3"><pre>${message.trace}</pre></td>
	</tr>
	</g:each>
	</tbody>
	</table>


</body>

</html>
