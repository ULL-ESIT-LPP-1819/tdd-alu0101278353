Node=Struct.new(:value , :next, :prev)

class List
	include Enumerable
	attr_accessor :head ,:tail
	def initialize(head, tail)
		@head=nil
		@tail=nil
	end

	def empty
		if @head==nil && @tail==nil
			true
		else
			false
		end
	end

	def insertar_head (value)
		if self.empty
			n=Node.new(value,nil,nil)
			@head=n
			@tail=n
		else
			n=Node.new(value,@tail,nil)
			@head.new=n
			@head=n
		end
	end

	def insertar_tail (value)
		if self.empty
			n=Node.new(value,nil,nil)
			@tail=n
			@head=n
		else
			n=Node.new(value,nil,@tail)
			@tail.next=n
			@tail=n
		end
	end

	def extraer_head (value)
		if self.empty
			n=Node.new(value,nil,nil)
			@head=n
			@tail=n
		else
			n=Node.new(nil,nil,nil)
			@head.value=n
			@tail=n

		end
	end

	def each
		n=Node.new(nil,nil,nil)
		n=@head
		 if !(n.nil?)
			 yield n.value
		 else
			false
		 end
	end

	def clasificar_imc (lista)
		obesidad = List.new((),())
		sin_obesidad=List.new((),())

		n=lista.extraer_head
		while !(n.nil?)
			if n.value.imc >=30
				obesidad.insertar_head(n.value.imc)
			else
				sin_obesidad.insertar_head(n.value.imc)
			end
			
		 n=lista.extraer_head
		end
		clasificacion=List.new((),())
		clasificacion.insertar_head(obesidad)
		clasificacion.insertar_head(sin_obesidad)

		clasificaion.to_s
	end



end   

