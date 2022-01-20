class Wikipost < ApplicationRecord
    has_one_attached :image
    def meta 
        "created by " + self.author + "on" + I18n.l(self.created_at, format: :long) + " ad last updated" + I18n.l(self.updated_at format: :long)
    end
end
