class Article < ApplicationRecord
#  aqui añadiremos validaciones para los  campos de la tabla
  validates :title, presence:true, length: {minimum:6, maximum:100}
  validates :description, presence:true, length: {minimum:10, maximum:300}
end
