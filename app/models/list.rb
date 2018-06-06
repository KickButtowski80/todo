class List < ApplicationRecord
    enum status: {low: 0, medium: 1, high: 2, urget: 3}
end
