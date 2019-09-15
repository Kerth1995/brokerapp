class DocumentoIdentidad < ApplicationRecord
	belongs_to :empleado	

	has_many :empleados, :dependent => :destroy
end
