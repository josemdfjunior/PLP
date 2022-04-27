class A
	def metodo_a
		puts "Class a"
	end
end 

class B
	def metodo_b
		puts "Class b"
	end
end 

class C
	def metodo_c
		puts "Class c"
	end
end 

class D
	def initialize
		@a = A.new
		@b = B.new
		@c = C.new
	end
end 

if __FILE__ == $0
	b = B.new
	b.metodo_b
end