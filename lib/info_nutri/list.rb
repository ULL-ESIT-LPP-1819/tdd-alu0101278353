Node=Struct.new(:value , :next, :prev)

class List
	include Enumerable
	attr_accessor :head ,:tail, :obesidad, :sin_obesidad
	def initialize
		@head=nil
		@tail=nil
		@obesidad=[]
		@sin_obesidad=[]
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
			n=Node.new(value,@head,nil)
			@head.prev=n
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

	def extraer_head ()
		if @head==@tail
			@head=nil
			@tail=nil
		else
			@head=@head.next
			@head.prev=nil

		end
	end

	def each
		n=@head
		 while n!=nil do
			 yield n.value
			n= n.next
		 end
	end

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

