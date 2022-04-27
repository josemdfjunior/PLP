require_relative "veiculo"

class Carro < Veiculo
end

if __FILE__ == $0
	carro = Carro.new
	carro.odometro = 11432
	carro.gasolina_usada = 366
	puts "Média:"
	puts carro.media
end