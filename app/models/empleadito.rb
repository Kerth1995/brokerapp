class Empleadito < ApplicationRecord
	belongs_to :documento
	belongs_to :privilegio
end
