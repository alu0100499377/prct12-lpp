module Naranjero

class Arbol_N
  
    def initialize
	@edad = 0
	@altura = 0
	@count = 0
	@recolectar = true
	@muerto = false
    end
    
    def recolectar_una
	if @count > 0
	   @recolectar = true
	else
	   @recolectar = false
	end
	
	if @recolectar == true
	   @count = @count - 1
	   puts "Que buena! quedan #{@count} naranjas en el arbol.\n"
	else
	   puts "No hay naranjas\n"
	end
    end
    
    def uno_mas
        if @muerto == false
	   @edad = @edad + 1 #la edad se va aumentando de uno en uno
	   puts "Ahora tiene #{@edad} anios\n"
	   @altura = @altura + 2 #la altura se va aumentando en 2
	   puts "El arbol mide #{@altura} centimetros\n"
	      @count = @count + (@edad*2)
	   
	   if @edad > 10 #si el arbol llega a los 10 años muere
	      puts "El naranjo ha muerto!!\n"
	      @muerto = true
	      @count = 0
	   end
		
	end
     end
     
     def contador
	#puts @count
	return @count
     end
	
     def edad
        return @edad
     end
     
     def altura
        return @altura
     end
	
    def arbol_muerto
       if @muerto == true
          return true
       end
    end
    
    
end #fin de la clase
end #fin module


