require 'lib/info_nutri/info_nutri'

RSpec.describe Info_nutricional do
        before :each do
		@valoracion=Info_nutricional.new(3.4,4.6, 3.1,2.4)
	end

        it "valoracion de las grasas" do
		expect(@valoracion.vgrasakj).to eq(125.8)
		expect(@valoracion.vgrasakcal.round(2)).to eq(30.6)
	end

	it "valoracion de los hidratos de carbono" do
		expect(@valoracion.vhidrakj.round(2)).to eq(78.2)
		expect(@valoracion.vhidrakcal).to eq(18.4)
	end

	it "valoracion de las proteinas" do
		expect(@valoracion.vprotkj).to eq(52.7)
		expect(@valoracion.vprotkcal).to eq(12.4)
	end

	it "valoracion de las grasas sasturadas" do
		expect(@valoracion.vsaturadas).to eq(2.4)
	end

end

