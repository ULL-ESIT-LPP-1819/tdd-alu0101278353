RSpec.describe InfoNutricional do
        before :each do
		@valoracion=InfoNutricional.new("LECHE ASTURIANA",3.6,4.6, 3.1,2.4,0.1)
	end
	
	it "nombre del producto" do
		expect(@valoracion.nombrep).to eq("LECHE ASTURIANA")
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


end

RSpec.describe List do

	it "existe un nodo" do
		n=Node.new(1,nil,nil)
	end

	it "existe una lista" do
		l=List.new(nil,nil)
	end

	it "existe lista vacia?" do
		l=List.new(nil,nil)
		expect(l.empty).to eq(true)
	end

	it "insertar por head" do
		l=List.new(nil,nil)
		l.insertar_head(1)
		expect(l.head.value).to eq(1)
	end

	it "insertar por tail" do
		l=List.new(nil,nil)
		l.insertar_tail(2)
		expect(l.tail.value).to eq(2)
	end

	it "extraer por head" do
		l=List.new(nil,nil)
		l.extraer_head(nil)
		expect(l.head.value).to eq(nil)
	end
	

end


RSpec.describe Individuo do
	before :each do
		@p1=Individuo.new("lucas")
		@p2=Paciente.new("martin", 60,1.80,25,30,50,0,8,16,29,5,13)
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
		expect(@p2).to respond_to(:datos , :name)
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
	end

end
