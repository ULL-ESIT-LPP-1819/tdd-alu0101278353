require 'lib/info_nutri/info_nutri'

RSpec.describe Info_nutricional do
        before :each do
		@infgrasas=Info_nutricional.new(3.4,2.4)
	end

        it "valoracion de las grasas" do
		expect(@infgrasas.vgrasakj).to eq(125.8)
		expect(@infgrasas.vgrasakcal.round(2)).to eq(30.6)
	end

end

