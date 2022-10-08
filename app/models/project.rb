class Project < ApplicationRecord
  belongs_to :user

  has_many :attacher, dependent: :destroy
  has_many :tasks, dependent: :destroy
end
