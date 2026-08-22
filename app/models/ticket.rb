class Ticket < ApplicationRecord
    validates :title, presence: true
    validates :status, inclusion: { in: %w[open in_progress completed] }
    validates :priority, inclusion: { in: %w[low medium high] }
end
