# == Schema Information
#
# Table name: associates
#
#  id               :integer          not null, primary key
#  associate_number :integer
#  association_date :date
#  payment          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_associates_on_associate_number  (associate_number) UNIQUE
#

class Associate < ActiveRecord::Base
end
