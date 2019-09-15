class Empleado < ApplicationRecord
	belongs_to :documento_identidads, :dependent => :destroy
end
