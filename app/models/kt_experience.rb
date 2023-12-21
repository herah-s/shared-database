class KtExperience < ApplicationRecord
  belongs_to :host, class_name: "KtUser"

end
