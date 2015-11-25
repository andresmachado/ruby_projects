class Aluno
  attr_accessor :nome, :sexo
  attr_reader :nota1, :nota2

  @@notas = [];

  def initialize( nome, sexo )
    @nome = nome.capitalize
    @sexo = sexo.downcase
  end

  def notas
    return @@notas.inspect
  end

  def adiciona_nota=( nota )
    @@notas.push(nota.to_f)
  end

  def calcula_media
    total = 0
    count = 0

    @@notas.each do |nota|
      total += nota
      count += 1
    end

    media = total / count
    return media.to_f
  end

  def nota_menor_que_zero?( nota )
    while nota < 0 do
      puts "Nota não pode ser menor que 0"
      print "Digite a nota: "
      nota = gets.chomp
      nota = nota.to_f
    end
   return nota
  end

end
