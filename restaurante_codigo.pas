	program Pzim;
	var
	  opcao:integer;
	
	const 
	  MAX_QUANTIDADE_PESSOAS = 3;
	
	type
	  TPessoa = record
	    nome: string;
	    categoria: string;
	  end;
	
	  TArrayPessoa = array[1..MAX_QUANTIDADE_PESSOAS] of TPessoa;
	
	var 
	  vetor_fila_restaurante: TArrayPessoa;
	
	function InserirPessoaFilaRestaurante: TArrayPessoa;
	var
	  i: integer;
	begin
	  for i := 1 to MAX_QUANTIDADE_PESSOAS do
	  begin
	    writeln('Digite o nome do cliente:');
	    readln(vetor_fila_restaurante[i].nome);
	    writeln('Digite a categoria do cliente - 0 Preferencial, 1 Vip, 2 Outros:');
	    readln(vetor_fila_restaurante[i].categoria);
	  end;
	  InserirPessoaFilaRestaurante := vetor_fila_restaurante;
	end;
	
	procedure ImprimirFilaRestaurante(vetor_fila_restaurante: TArrayPessoa; tamanho: integer);
	var
	  i: integer;
	begin
	  for i := 1 to tamanho do
	  begin
	    if vetor_fila_restaurante[i].categoria = '0' then
	      vetor_fila_restaurante[i].categoria := 'Preferencial'
	    else if vetor_fila_restaurante[i].categoria = '1' then
	      vetor_fila_restaurante[i].categoria := 'Vip'
	    else if vetor_fila_restaurante[i].categoria = '2' then
	      vetor_fila_restaurante[i].categoria := 'Outros'
	    else
	      vetor_fila_restaurante[i].categoria := 'Sem categoria';
	    
	    writeln(i, '- Nome: ', vetor_fila_restaurante[i].nome ,' Categoria: ', vetor_fila_restaurante[i].categoria);
	  end;
	end;
	
	procedure Menu;
	var
	  opcao: integer; // Adicione esta declaração
	begin
	  writeln('Escolha uma opção:');
	  writeln('1 - Chegada da pessoa na fila');
	  writeln('2 - Opção 2');
	  writeln('3 - Opção 3');
	  writeln('4 - Opção 4');
	  writeln('5 - Sair');
	  writeln;
	  
	  readln(opcao);
	  
	  // Utilizando a estrutura case
	  case opcao of
	    1: 
	    begin
	      vetor_fila_restaurante := InserirPessoaFilaRestaurante;
	      ImprimirFilaRestaurante(vetor_fila_restaurante, MAX_QUANTIDADE_PESSOAS);
	    end;
	    2: writeln('Você escolheu a Opção 2');
	    3: writeln('Você escolheu a Opção 3');
	    4: writeln('Você escolheu a Opção 4');
	    5:
			 begin 
			  writeln('saindo');
			  halt
			 end;
	  else
	    writeln('Opção inválida');
	  end;
	end;
	
begin
 opcao:=10;
	while opcao <> 5 do
	 begin
	  Menu(); 
	 end;
	   
end.
