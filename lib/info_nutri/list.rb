


Node=Struct.new(:value , :next, :prev)
# Author:: Carla Fernanda Flores Gonzales (mailto:alu0101278353@ull.edu.es)
#clase list para representar listas enlazadas
class List
	include Enumerable
	attr_accessor :head ,:tail, :obesidad, :sin_obesidad
	#innicializamos 
	def initialize
		@head=nil
		@tail=nil
		@obesidad=[]
		@sin_obesidad=[]
	end
	#método para ver si la lista está vacía
	def empty
		if @head==nil && @tail==nil
			true
		else
			false
		end
	end
	#método para insertar una informacion por la cabeza
	def insertar_head (value)
		if self.empty
			n=Node.new(value,nil,nil)
			@head=n
			@tail=n
		else
			n=Node.new(value,@head,nil)
			@head.prev=n
			@head=n
		end
	end
	#método para insertar una información por la cola
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
	#método definido para extraer datos de la lista por la cabeza
	def extraer_head ()
		if @head==@tail
			@head=nil
			@tail=nil
		else
			@head=@head.next
			@head.prev=nil

		end
	end
	#definimos el método del modulo enumerable para que recorra la lista
	def each
		n=@head
		 while n!=nil do
			 yield n.value
			n= n.next
		 end
	end
	#método para clasificar los datos del paciente segun el índice de masa corporal 
	def clasificar_imc

		n=@head
		while n!=nil do
			if n.value.imc >=30
				obesidad << n.value
			else
				sin_obesidad << n.value
			end
			
			n=n.next
		end

	end



end   

