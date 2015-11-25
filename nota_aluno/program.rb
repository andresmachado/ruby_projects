require ('./aluno.rb');

def sair ( answer )
  answer == 's' ? true : false
end

print "Qual seu nome? "
aluno = gets.chomp

print "Qual seu sexo? (M ou F) "
sexo = gets.chomp

aluno = Aluno.new(aluno, sexo);

begin
  print "Digite uma nota: "
  nota = gets.chomp
  nota = nota.to_f
  aluno.adiciona_nota = aluno.nota_menor_que_zero?( nota )

  print "Deseja adicionar mais notas? (s/n): "
  answer = gets.chomp.downcase

  sair = sair(answer)
end while sair

media = aluno.calcula_media

puts ( "#{aluno.nome} com media #{media}" )
puts ( "Todas as notas: #{aluno.notas}" )
