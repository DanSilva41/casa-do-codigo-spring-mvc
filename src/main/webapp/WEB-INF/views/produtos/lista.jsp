<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UFT-8">
<title>Livro de Java, Android, Iphone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>

	<h1>Lista de Produtos</h1>
	<div>${sucesso }</div>
	<div>${falha }</div>
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
					<td><a
						href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build()}">${produto.titulo }</a>
					</td>
					<td>${produto.descricao}</td>
					<td>${produto.paginas }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>