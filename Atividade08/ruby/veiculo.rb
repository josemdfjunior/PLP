class Veiculo
	attr_accessor :odometro
	attr_accessor :gasolina_usada

	def initialize(odometro=0, gasolina_usada=0)
		@odometro = odometro
		@gasolina_usada = gasolina_usada
	end
   
	def acelerar
	  puts "Acelerar!"
	end
   
	def buzinar
	 puts "Beep! Beep!"
	end
   
	def dirigir
	  puts "Ligar 2 rodas dianteiras."
	end
   
	def media
		puts @gasolina_usada
	 if @gasolina_usada != 0
	 	return @odometro / @gasolina_usada
	 else
		return 0
	 end
	end
   end
   
if __FILE__ == $0
	vc = Veiculo.new 
	vc.acelerar
	vc.buzinar
	vc.dirigir
	puts vc.media
	vc.odometro = 10
	vc.gasolina_usada = 30
	puts vc.media
	vc.odometro = 10
	vc.gasolina_usada = 30
	puts vc.media
end