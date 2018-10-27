class VagonPasajeros  

  attr_accessor :cantidadBanios
  attr_reader :pesoMax, :cantidadPasajeros

  def initialize(pesoMax, cantidadPasajeros, cantidadBanios)  
    # Instance variables  
    @pesoMax = pesoMax  
    @cantidadPasajeros = cantidadPasajeros 
    @cantidadBanios = cantidadBanios
  end

  def cantidadPasajeros(ancho,largo)  
    if ancho <= 2.5
      @cantidadPasajeros = largo * 8
    else 
      @cantidadPasajeros = largo * 10
    end  
  end

  def esLiviano
    @pesoMax < 2500
  end

  def pesoMax
    @pesoMax = @cantidadPasajeros * 80
  end
end 

vagonA = VagonPasajeros.new(0,0,0)
vagonA.cantidadPasajeros(100,100)