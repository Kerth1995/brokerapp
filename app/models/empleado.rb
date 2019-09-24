class Empleado < ApplicationRecord
	belongs_to :documento
	belongs_to :privilegio
end
