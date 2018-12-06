Node=Struct.new(:value , :next, :prev)

class List
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

end   

