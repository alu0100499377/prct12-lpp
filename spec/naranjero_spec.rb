require "naranjero"
require 'thread'


module Naranjero
     describe Naranjero::Arbol_N do
     before :each do
	@naranjera = Naranjero::Arbol_N.new
     end#end del before

  context "Pruebas para la clase Arbol_N y los hilos de ejecucion" do
      it "El atributo es de la clase" do
	expect(@naranjera.class).to eq(Arbol_N)
      end
      
      it "Existe un metodo para recolectar una naranja" do
	expect(@naranjera).to respond_to :recolectar_una
      end
      
      it "Existe un metodo que devuelva la edad del arbol" do
	expect(@naranjera).to respond_to :edad
      end
      
      ###################CREACION DE HILOS CON SUS PRUEBAS#####################
      
      it "Pruebas para probar la ejecucion con los hilos" do
	  
	  @semaphore = Mutex.new
	  @hilo_uno = Thread.new do
	  @semaphore.synchronize {
          @naranjera.uno_mas
          sleep(1)
	  @naranjera.uno_mas
	  sleep(1)
	  @naranjera.recolectar_una
	  sleep(1)
	  @naranjera.recolectar_una
	  sleep(1)
	  @naranjera.recolectar_una
	  sleep(1)
	  @naranjera.recolectar_una
	  sleep(1)
	  @naranjera.recolectar_una
	  sleep(1)
          @naranjera.uno_mas
          sleep(1)
	  @naranjera.uno_mas
	  sleep(1)
	  @naranjera.recolectar_una
	  sleep(1)
	  @naranjera.uno_mas
	  sleep(1)
	  @naranjera.recolectar_una
	  sleep(1)
	  @naranjera.uno_mas
	  sleep(1)   
	  }
      end #fin de hilo_uno
  
   
	  @hilo_dos = Thread.new do
	  	@semaphore.synchronize {
          @naranjera.recolectar_una
	  sleep(1)
	  @naranjera.uno_mas
	  sleep(1)
	  @naranjera.uno_mas
	  sleep(1)
	  @naranjera.uno_mas
	  	}
      end#fin de hilo_dos
   
	  @hilo_uno.join
	  @hilo_dos.join
   
   
    expect(@hilo_uno.class).to eq(Thread)
    expect(@hilo_dos.class).to eq(Thread)
    
  end#final del it de ejecucion
      
  end#end context
end#end describe Naranjero

end#fin del module
