       #Informações básicas
       class Info
        def infos
    print 'Digite a frase: '
    @Fra = gets.chomp

    print 'Digite o idioma que a frase está: '
    @origin = gets.chomp

    print 'Digite o idioma que vc quer traduzir: '
    @future = gets.chomp
        end
       end  
       info = Info.new
       puts info.infos

      
