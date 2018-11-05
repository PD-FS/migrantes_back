class Need < ApplicationRecord
  belongs_to :donation_category_id
  belongs_to :enterprise_id
end
