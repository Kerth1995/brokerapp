class Privilegio < ApplicationRecord
	has_many :empleados
	has_many :empleaditos
end
