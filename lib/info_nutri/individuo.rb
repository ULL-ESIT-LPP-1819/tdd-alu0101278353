# Esta clase representa a un individuo
# Author:: Carla Fernanda Flores Gonzales (mailto:alu0101278353@ull.edu.es)
class Individuo
	attr_accessor :name
	# inicializa al nombre del paciente
	def initialize (name) 
		@name=name
	end

	def to_s
		"Nombre #{@name}"
	end

end
# Esta clase representa a un paciente
# Author:: Carla Fernanda Flores Gonzales (mailto:alu0101278353@ull.edu.es)
class Paciente < Individuo
	include Comparable, Enumerable
	attr_accessor :peso , :talla , :tricipital , :bicipital, :subescapular ,:suprailiaco , :brazo , :cintura ,:cadera, :sexo, :edad 
	# inicializa los datos de la clase paciente
	def initialize(name,peso,talla,tricipital,bicipital,subescapular,suprailiaco,brazo,cintura,cadera,sexo,edad,actividad)
		super(name)
		@peso , @talla , @tricipital , @bicipital, @subescapular ,@suprailiaco , @brazo , @cintura ,@cadera, @sexo, @edad,@actividad = peso , talla , tricipital , bicipital, subescapular ,suprailiaco , brazo , cintura ,cadera, sexo, edad, actividad
	end


	def to_s
		s=""
		s << super.to_s
		s << ",peso:#{@peso}," 

	end
	#se define el metodo del modulo comparable
	#se toma como valor los datos de indice de masa corporal de un paciente
	def <=> (anOther)
		self.imc <=> anOther.imc
	end
	#incluimos el metodo para calcular el indice de masas corporal
	def imc
		peso/(talla*talla)
        end

#Validación de los menus dietéticos
	
	#metodo para calcular el peso ideal del individuo
	def peso_ideal
		((talla-150)*0.75)+50
	end

	#método  para calcular el gasto energético basal del individuo segun el género
	def gasto_ener_basal
		gasto=0
			if sexo == 'M' then
				gasto=((10*peso)+(6.25*talla)-(5*edad))-161
			else
				gasto=((10*peso)+(6.25*talla)-(5*edad))+5

			end
			gasto
			
	end

	#método para calcular elefecto termógeno que indica el gasto enegético que se necesita para procesar los alimentos y se define como el 10%
	def efecto_termogeno
		self.gasto_ener_basal*0.10
	end

#método para calcular la actividad física de acuerdo del inidividuo
	def actividad_fisica

		if @actividad=="reposo"
			factor=0
		elsif @actividad=="actividad ligera"
                        factor=0.12
		elsif @actividad=="actividad moderada"
                       factor=0.27
		elsif @actividad=="actividad intensa"
                        factor=0.54
                end

	end

	def gasto_acti_fisica
		(self.gasto_ener_basal)*(self.actividad_fisica)
	end

	def gasto_ener_total
		self.gasto_ener_basal+self.efecto_termogeno+self.gasto_acti_fisica
	end
end
