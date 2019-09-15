class Empleado < ApplicationRecord

	has_many :documento_identidads, :dependent => :destroy

	has_many :privilegio_empleados, :dependent => :destroy
end
