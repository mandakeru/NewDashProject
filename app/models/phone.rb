# == Schema Information
#
# Table name: phones
#
#  id             :integer          not null, primary key
#  phone1         :string
#  phone2         :string
#  phoneable_id   :integer
#  phoneable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_phones_on_phoneable_id_and_phoneable_type  (phoneable_id,phoneable_type)
#

class Phone < ActiveRecord::Base
end
