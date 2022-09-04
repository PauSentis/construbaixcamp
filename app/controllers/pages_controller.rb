class PagesController < ApplicationController

  def landing
    @services = %w(rehabilitacions obra_nova reformes enderrocs obra_publica 
      manteniments impermeabilitzacions aillaments departament_tecnic)
  end
end
