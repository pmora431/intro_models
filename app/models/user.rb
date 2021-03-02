class User < ApplicationRecord
    validates :email, uniqueness: {message: "Este correo ya existe."}
end
