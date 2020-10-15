class Topic < ApplicationRecord

    validates :owner, presence: { message: "Ein Topic muss einem Nutzer zugeordnet sein" }

    belongs_to :owner, foreign_key: :owner_id, class_name: :User
end
