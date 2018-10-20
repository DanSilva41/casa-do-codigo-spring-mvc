package br.com.casadocodigo.loja.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Produto;

@Repository
@Transactional
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager manager;

	public void gravar(Produto produto) {
		manager.persist(produto);
	}

	public List<Produto> listar() {
		return manager.createQuery("FROM Produto", Produto.class).getResultList();
	}

	public Produto findById(Integer id) {
		return manager.createQuery("SELECT distinct(p) FROM Produto p JOIN FETCH p.precos precos WHERE p.id = :id",
				Produto.class).setParameter("id", id).getSingleResult();
	}
}
