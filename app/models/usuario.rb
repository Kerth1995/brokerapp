class Usuario < ApplicationRecord
  authenticates_with_sorcery!
end
