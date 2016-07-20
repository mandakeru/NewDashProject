# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  cpf        :string
#  rg         :string
#  birthdate  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_people_on_cpf  (cpf) UNIQUE
#  index_people_on_rg   (rg) UNIQUE
#

class Person < ActiveRecord::Base
end
