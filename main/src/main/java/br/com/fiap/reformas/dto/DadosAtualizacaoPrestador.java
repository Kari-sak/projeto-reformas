package br.com.fiap.reformas.dto;

import br.com.fiap.reformas.entity.Especialidade;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

public record DadosAtualizacaoPrestador(
	
		@NotNull
		Long id,
		
		String nome,
		
		@Email
		String email,
		
		@Pattern(regexp="\\d{10,11}")
		String telefone,
		
		@Pattern(regexp="(\\d{8,9}\\/\\d{4}\\-\\d{2})")
		String cnpj,
		
		Especialidade especialidade,
		
		DadosEndereco endereco
		
		) {

}
