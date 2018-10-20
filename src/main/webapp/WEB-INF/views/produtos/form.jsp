<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UFT-8">
<title>Livro de Java, Android, Iphone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<form:form action="${s:mvcUrl('PC#salvar').build() }" method="POST" commandName="produto">
		<div>
			<label>Título</label> 
			<input type="text" id="titulo" name="titulo" />
			<form:errors path="titulo" />
		</div>
		<div>
			<label>Descrição</label>
			<textarea id="descricao" name="descricao" rows="10" cols="20"></textarea>
			<form:errors path="descricao" />
		</div>
		<div>
			<label>Páginas</label> 
			<input type="text" id="paginas" name="paginas" />
			<form:errors path="paginas" />
		</div>
		<div>
			<label>Data de Lançamento</label> 
			<input type="text" id="dataLancamento" name="dataLancamento" />
			<form:errors path="dataLancamento" />
		</div>
		<c:forEach items="${tipos }" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label> <input type="text"
					name="precos[${status.index}].valor" /> <input type="hidden"
					name="precos[${status.index}].tipo" value="${tipoPreco}" />
			</div>
		</c:forEach>
		<button type="submit">Cadastrar</button>
	</form:form>

</body>
</html>