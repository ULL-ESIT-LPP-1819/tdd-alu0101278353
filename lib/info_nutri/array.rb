class Array

    def ordenar_for
	    inter=true
		for i in 0..(self.length-1)
			inter=false
			for j in 0..(self.length-i-1)
		 	   if  self[j] < self[j+1]
				self[j], self[j+1] = self[j+1], self[j]
		 	   end
			end
			break if inter==false
		end
		return self

     end 

    def ordenar_each
	    inter=true
	    self.each_index do |i|
			inter=false
			self.each_index do |j|
				if self[i] < self[j]
					self[i],self[j]=self[j],self[i]
					inter=true
				end
			end
			break if inter==false
		end
	return self
    end

end


	
