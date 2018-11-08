require 'lib/info_nutri'


describe Info_nutricional do
        before :each do
		@infgrasas=Info_nutricional.new(3.4,2.4)
	end

        it "valoracion de las grasas" do
		@infgrasas*37
                @infgrasas*9
		expect(@infgrasas.vgrasa).to eq(125.8)
		expect(@infgrasas.vgrasa).to eq(30.6)
	end

end

