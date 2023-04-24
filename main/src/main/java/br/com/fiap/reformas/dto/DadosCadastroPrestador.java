package br.com.fiap.reformas.dto;

import br.com.fiap.reformas.entity.Especialidade;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

public record DadosCadastroPrestador(
		
		@NotBlank
		String nome,
		
		@NotBlank
		@Email
		String email,
		
		@NotBlank
		@Pattern(regexp="\\d{10,11}")
		String telefone,
	
		@NotBlank
		@Pattern(regexp="(\\d{8,9}\\/\\d{4}\\-\\d{2})")
		String cnpj,
		
		@NotNull
		Especialidade especialidade,
		
		@NotNull
		@Valid
		DadosEndereco endereco
		
	) {

}
