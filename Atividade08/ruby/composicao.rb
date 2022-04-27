class A
	def metodo_a
		puts "Class a"
	end
end

class B
	def initialize
		arr = [A.new, A.new, A.new, A.new]
	end
end