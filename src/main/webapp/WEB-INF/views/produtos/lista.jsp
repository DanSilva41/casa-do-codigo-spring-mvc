<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UFT-8">
<title>Livro de Java, Android, Iphone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>

	<h1>Lista de Produtos</h1>

	<table>
		<thead>
			<tr>
				<td>Título</td>
				<td>Descrição</td>
				<td>Páginas</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="#{produtos }" var="produto">
				<tr>
					<td>${produto.titulo }</td>
					<td>${produto.descricao}</td>
					<td>${produto.paginas }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>