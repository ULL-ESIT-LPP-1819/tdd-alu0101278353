class Valoracion_Nutricional
        attr_accessor :peso ,:talla ,:tricipital, :bicipital, :subescapular, :suprailiaco, :brazo, :cintura, :cadera , :sexo , :edad
        def initialize (peso , talla , tricipital , bicipital, subescapular ,suprailiaco , brazo , cintura ,cadera, sexo, edad)
                @peso , @talla , @tricipital , @bicipital, @subescapular ,@suprailiaco , @brazo , @cintura ,@cadera, @sexo , @edad = peso , talla , tricipital , bicipital, subescapular ,suprailiaco , brazo , cintura ,cadera, sexo ,edad
        end
        def to_s
                "(#{@peso}; #{@talla};#{@tricipital};#{@bicipital};#{@subescapular};#{@suprailiaco};#{@brazo};#{@cintura}; #{@cadera}; #{@sexo};#{@edad})"
        end
        def imc
                @peso/(@talla*@talla)
        end

        def imc_tabla
                v = self.imc

                if v <18.5
                        return "#{v} < 18.5 bajo peso  -- delgado"
                elsif v >= 18.5 && v <= 24.9
                        return "#{v} <24.9 adecuado  -- aceptable"
                elsif v >=25 && v <= 29.9
                        return "#{v} < sobrepeso -- sobrepeso"
                elsif v >=30 && v <= 34.9
                        return "#{v} < obecidad grado 1 -- obesidad"
                elsif v>=35 && v <= 39.9
                        return "#{v} <obecidad grado 2 ---obesidad "
                elsif v >= 40
                        return "#{v} < obecidad grado 2 --- obesidad"
                end

        end

        def grasa
                        1.2*self.imc+0.23*@edad-10.8*@sexo-5.4

        end
        def rcc
                @cintura/@cadera
        end
        def media
                (@tricipital[0]+@tricipital[1]+@tricipital[2])/3
        end
        def media_bicipital
                (@bicipital[0]+@bicipital[1]+@bicipital[2])/3
        end
        def media_sub
               (@subescapular[0]+@subescapular[1]+@subescapular[2])/3
        end
        def media_su
               (@suprailiaco[0]+@suprailiaco[1]+@suprailiaco[2])/3
        end


end             
