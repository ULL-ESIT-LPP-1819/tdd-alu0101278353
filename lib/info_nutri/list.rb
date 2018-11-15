Node=Struct.new(:value , :next, :prev)

class List
	def initialize(head, tail)
		@head=nil
		@tail=nil
	end

	def empty
		if @head==nil && @tail==nil
			true
		end
	end
end   
