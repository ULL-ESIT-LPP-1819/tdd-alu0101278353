RSpec.describe Array do
	before :all do
			@eti1=InfoNutricional.new(250,280,108,0,0)
                        @eti2=InfoNutricional.new(209,185,179,0,0)
                        @eti3=InfoNutricional.new(181,579,105,0,0)
                        @eti4=InfoNutricional.new(293,154,580,0,0)
                        @eti5=InfoNutricional.new(369,454,630,0,0)
                        @eti6=InfoNutricional.new(550,890,350,0,0)
                        @eti7=InfoNutricional.new(350,462,356,0,0)
                        @eti8=InfoNutricional.new(180,200,369,0,0)
                        @eti9=InfoNutricional.new(420,380,290,0,0)
                        @eti10=InfoNutricional.new(514,254,110,0,0)
                        @eti11=InfoNutricional.new(190,280,339,0,0)
                        @menu1=[@eti11,@eti2,@eti3,@eti4]
                        @menu2=[@eti4,@eti6,@eti9,@eti10]
                        @menu3=[@eti3,@eti7,@eti5,@eti9]
                        @menu4=[@eti2,@eti5,@eti8,@eti6]
                        @menu5=[@eti9,@eti2,@eti4,@eti6]
                        @menu6=[@eti5,@eti10,@eti8,@eti1]
                        @menu7=[@eti7,@eti11,@eti10,@eti6]
                        @menu8=[@eti3,@eti6,@eti8,@eti10]
			@menu9=[@eti11,@eti2,@eti9,@eti5]
                        @menu10=[@eti6,@eti1,@eti8,@eti4]
			@menus=[@menu1,@menu2,@menu3,@menu4,@menu5,@menu6,@menu7,@menu8,@menu9,@menu10]
	end
	it "menus dieteticos en un array" do
		expect(@menus.collect{|x| x.collect{|x| x.valorenerkcal}}).to eq([[4186, 3337, 4365, 5573], [5573, 9910, 6460, 6082], [4365, 6422, 7657, 6460], [3337, 7657, 3896, 9910],[6460,3337,5573,9910],[7657,6082, 3896,3802],[6422,4186,6082,9910], [4365, 9910, 3896, 6082], [4186, 3337, 6460, 7657], [9910, 3802, 3896, 5573]])
	end
end

