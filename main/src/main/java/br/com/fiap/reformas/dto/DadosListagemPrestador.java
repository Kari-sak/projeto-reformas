package br.com.fiap.reformas.dto;

import br.com.fiap.reformas.entity.Especialidade;
import br.com.fiap.reformas.entity.Prestador;

public record DadosListagemPrestador(
		Long id,
		String nome,
		String email,
		String cnpj,
		Especialidade especialidade
		
	) {
	
	public DadosListagemPrestador(Prestador prestador) {
		this(
				prestador.getId(),
				prestador.getNome(),
				prestador.getEmail(),
				prestador.getCnpj(),
				prestador.getEspecialidade()
				
			);
		
	}

}
