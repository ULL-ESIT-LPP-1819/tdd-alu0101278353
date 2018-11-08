require 'lib/info_nutri/info_nutri'

RSpec.describe Info_nutricional do
        before :each do
		@infgrasas=Info_nutricional.new(3.4,2.4)
		@infhidratos=Info_nutricional.new(4.6)
	end

        it "valoracion de las grasas" do
		expect(@infgrasas.vgrasakj).to eq(125.8)
		expect(@infgrasas.vgrasakcal.round(2)).to eq(30.6)
	end

	it "valoracion de los hidratos de carbono" do
		expect(@infhidratos.vhidrakj).to eq(78.2)
		expect(@infhidratos.vhidrakcal).to eq(18.4)
	end

end

