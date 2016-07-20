# == Schema Information
#
# Table name: dependents
#
#  id           :integer          not null, primary key
#  associate_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_dependents_on_associate_id  (associate_id)
#

class Dependent < ActiveRecord::Base
end
