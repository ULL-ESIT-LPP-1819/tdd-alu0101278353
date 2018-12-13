require 'info_nutri'
RSpec.describe InfoNutricional do
        before :each do
		@valoracion=InfoNutricional.new(3.6,4.6, 3.1,2.4,0.1)
	end
	

        it "valoracion de las grasas" do
		expect(@valoracion.vgrasakj.round(2)).to eq(133.2)
		expect(@valoracion.vgrasakcal.round(2)).to eq(32.4)
	end

	it "valoracion de los hidratos de carbono" do
		expect(@valoracion.vhidrakj.round(2)).to eq(78.2)
		expect(@valoracion.vhidrakcal).to eq(18.4)
	end

	it "valoracion de las proteinas" do
		expect(@valoracion.vprotkj).to eq(52.7)
		expect(@valoracion.vprotkcal).to eq(12.4)
	end

	it "valoracion de las grasas saturadas" do
		expect(@valoracion.vsaturadas).to eq(2.4)
	end

	it "valoracion de la sal" do
		expect(@valoracion.vsal).to eq(0.1)
	end

	it "valor energetico de la leche en KJ y Kcal" do
		expect(@valoracion.valorenerkj).to eq(264.1)
		expect(@valoracion.valorenerkcal.round(2)).to eq(63.2)
	end

	it "ingesta de referencia de grasa total" do
		expect(@valoracion.ingesta_referencia).to eq(6)
	end

	context "Comparable" do
		before :each do
			@etiqueta1=InfoNutricional.new(4.5,4.6, 3.1,2.4,0.1)
			@etiqueta2=InfoNutricional.new(3.6,4.9, 3.3,2.8,0.2)
			@etiqueta3=InfoNutricional.new(4.5,4.6, 3.1,2.4,0.1)
		end
		it "etiqueta mayor que la otra" do
			expect(@etiqueta1 > @etiqueta2).to eq(true)
		end
	       it "etiqueta menor que la otra" do
		       expect(@etiqueta1<@etiqueta2).to eq(false)
	       end	       
	       it "etiqueta menor igual que la otra"do
		       expect(@etiqueta1<=@etiqueta2).to eq(false)
	       end
	       it "etiqueta mayor igual que la otra"do
		       expect(@etiqueta1>=@etiqueta2).to eq(true)
	       end
	       it "usando between entre dos etiquetas" do
		       expect(@etiqueta2.between?(@etiqueta1, @etiqueta3)).to eq(false)
	       end
	end

end

RSpec.describe List do

	it "existe un nodo" do
		n=Node.new(1,nil,nil)
	end

	it "existe una lista" do
		l=List.new
	end

	it "existe lista vacia?" do
		l=List.new
		expect(l.empty).to eq(true)
	end

	it "insertar por head" do
		l=List.new
		l.insertar_head(1)
		expect(l.head.value).to eq(1)
	end

	it "insertar por tail" do
		l=List.new
		l.insertar_tail(2)
		expect(l.tail.value).to eq(2)
	end

	it "extraer por head" do
		l=List.new
		l.insertar_tail(2)
		l.extraer_head()
		expect(l.head).to eq(nil)
	end
	context "lista con las etiquetas" do
		before :each do
			@eti1=InfoNutricional.new(1,5,8,9,6)
			@eti2=InfoNutricional.new(1,5,8,9,3)
			@eti3=InfoNutricional.new(1,5,8,9,1)
			@eti4=InfoNutricional.new(1,5,8,9,7)
			@eti5=InfoNutricional.new(1,5,8,9,9)
			@eti6=InfoNutricional.new(1,5,8,9,2)
		end
		it "introduciendo la etiqueta"do
			l=List.new
			expect(l.insertar_head(@eti1)).to be_a(Node)
		end
	end

	context "Enumerable"do
		before :each do
			@eti1=InfoNutricional.new(1,5,8,9,6)
			@eti2=InfoNutricional.new(1,5,8,9,3)
			@eti3=InfoNutricional.new(1,5,8,9,1)
			@l=List.new
			@l.insertar_head(@eti1)
			@l.insertar_tail(@eti2)
			@l.insertar_tail(@eti3)
		end

		it "metodo collect " do
			expect(@l.collect{|x| x.sal*39}).to eq([234,117,39])
		end

		it "metodo select" do
			expect(@l.select{|x| x.sal<6}).to eq([@eti2,@eti3])
		end
		
		it"metodo max"do
			expect(@l.max).to eq(@eti1)
		end		
		
		it "metodo min"do
			expect(@l.min).to eq(@eti3)
		end
	end
end


RSpec.describe Individuo do
	before :each do
		@p1=Individuo.new("lucas")
		@p2=Paciente.new("martin",60,1.80,25,30,50,0,8,16,29,5,13)
	end
	it "p1 es una instancia de la clase individuo" do
		expect(@p1).to be_instance_of(Individuo)
	end

	it "instancia de la clase paciente" do
		expect(@p2).to be_instance_of(Paciente)
	end
	
	context "tipo" do
		@p1=Individuo.new("lucas")
                @p2=Paciente.new("martin", 60,1.80,25,30,50,0,8,16,29,5,13)
	end
	it "debe responder al metodo nombre de la clase individuo" do
		expect(@p1).to respond_to(:name)
	end

	it "debe responder al metodo de datos y nombre de la clase paciente" do
		expect(@p2).to respond_to(:imc , :to_s)
	end
	
	it "comprobando la jerarquía de p1" do
		expect(@p1).to be_a_kind_of(Individuo)
		expect(@p1).to be_a_kind_of(Object)
		expect(@p1).to be_a_kind_of(BasicObject)	
	end

	it "comprobando jerarquia de p2" do
		expect(@p2).to be_a_kind_of(Paciente)
		expect(@p2).to be_a_kind_of(Individuo)
		expect(@p2).to be_a_kind_of(Object)
		expect(@p2).to be_a_kind_of(BasicObject)
	end

		context "clacificación según el IMC" do
			before :each do
				@per1=Paciente.new("carla",50,1.56,30,16,45,36,28,70,60,12,45)
				@per2=Paciente.new("julio",90,1.65,30,16,58,36,21,70,65,22,45)
				@per3=Paciente.new("carmelo",85,1.72,30,16,45,36,28,50,65,33,45)
				@per4=Paciente.new("martha",79,1.70,30,16,45,36,28,50,65,33,45)
				@per5=Paciente.new("alvaro",72,1.62,30,16,45,36,28,50,65,33,45)
			end
			it "clacificacion del paciente segun el IMC"do
				l=List.new
				l.insertar_head(@per1)
				l.insertar_head(@per2)
				l.insertar_head(@per3)
				l.insertar_head(@per4)
				l.clasificar_imc()
				expect(l.obesidad).to eq([@per2])
				expect(l.sin_obesidad).to eq([@per4,@per3,@per1])

			end
		end

	context "comparable" do
		before :each do
			@per1=Paciente.new("carla",50,1.56,30,16,45,36,28,70,60,12,45)
			@per2=Paciente.new("julio",90,1.65,30,16,58,36,21,70,65,22,45)
			@per3=Paciente.new("carmelo",85,1.72,30,16,45,36,28,50,65,33,45)
		end

			it "Valoracion Nutricional de una persona mayor que la  otra" do
				expect(@per1 > @per2).to eq(false)
			end
			it "Valoracion Nutricional de una persona menor que el de la otra" do
				expect(@per1<@per2).to eq(true)
			end
			it "Valotracion Nutricional de una persona mayor igual que el de la otra"do
				expect(@per1 >= @per2).to eq(false)
			end
			it "Valotracion Nutricional de una persona menor igual que el de la otra"do
				expect(@per1<=@per2).to eq(true)
			end
			it "Valoracion Nutricional deuna persona entre dos de ellas"do
				expect(@per2.between?(@per1,@per2)).to eq(true)
			end
	end

	context "enumerable"do
		before :each do
			@per1=Paciente.new("carla",50,1.56,30,16,45,36,28,70,60,12,45)
                        @per2=Paciente.new("julio",90,1.65,30,16,58,36,21,70,65,22,45)
                        @per3=Paciente.new("carmelo",85,1.72,30,16,45,36,28,50,65,33,45)

			@l=List.new
			@l.insertar_head(@per1)
			@l.insertar_head(@per2)
			@l.insertar_head(@per3)
		end
		it "metodo collect"do
			expect(@l.collect{|x| x.name}).to eq(["carmelo","julio","carla"])
		end

		it "metodo select"do
			expect(@l.select{|x| x.imc < 18.5}).to eq([])
		end

		it "metodo sort"do 
			expect(@l.sort).to eq([@per1,@per3,@per2])
		end


		it "metodo max"do
			expect(@l.max).to eq(@per2)
		end

		it "método min" do 
			expect(@l.min).to eq(@per1)
		end
	end

	context "Menú Dietético Para Una Persona"do
		before each: do
	       		@eti1=InfoNutricional.new(1,5,8,9,6)
                        @eti2=InfoNutricional.new(2,8,7,9,4)
                        @eti3=InfoNutricional.new(1,7,5,9,1)
                        @eti4=InfoNutricional.new(2,5,8,9,7)
                        @eti5=InfoNutricional.new(9,5,3,9,4)

			@menu[@eti1,@eti2,@eti3,@eti4,@eti5]

			@per1=Paciente.new("carla",65,1.60,20,45,12,10,15,60,80,0,22)
			@per2=Paciente.new("julio",90,1.65,30,16,58,36,21,70,65,1,45)
                        @per3=Paciente.new("carmelo",85,1.72,30,16,45,36,28,50,65,1,45)
                        @per4=Paciente.new("martha",79,1.70,30,16,45,36,28,50,65,0,45)
                        @per5=Paciente.new("alvaro",72,1.62,30,16,45,36,28,50,65,1,45)

			@pacientes=[@per1,@per2,@per3,@per4,@per5]

		end
			it "Menús" do
				@menu.collect{|x| x>100 x.valorenerkcal}
			end
	end

end
