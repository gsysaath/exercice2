class Address < ApplicationRecord
  EU = %w(Austria Belgium Bulgaria Croatia Republic of Cyprus Czech Republic Denmark Estonia Finland France Germany Greece Hungary Ireland Italy Latvia Lithuania Luxembourg Malta Netherlands Poland Portugal Romania Slovakia Slovenia Spain Sweden)
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
