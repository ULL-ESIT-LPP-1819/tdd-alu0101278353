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

end
