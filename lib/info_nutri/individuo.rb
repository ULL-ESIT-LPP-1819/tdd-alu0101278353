class Individuo
	attr_accessor :name

	def initialize (name) 
		@name=name
	end
	
	def name
		n=Individuo.new("nombre")
		puts n.name
	end

end
