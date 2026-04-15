class MusicalFragment < ApplicationRecord
  belongs_to :source_title
  belongs_to :nuance
  belongs_to :caractere
  belongs_to :bow_portion
  belongs_to :bow_location
  belongs_to :position
  belongs_to :focus

  # Many-to-Many Associations
  has_and_belongs_to_many :harmonique_natures
  has_and_belongs_to_many :type_accords
  has_and_belongs_to_many :intervalles
  has_and_belongs_to_many :voices
  has_and_belongs_to_many :measure_units
  has_and_belongs_to_many :modificateurs
  has_and_belongs_to_many :rhythmic_types
  has_and_belongs_to_many :mystrings
  has_and_belongs_to_many :left_hand_techniques
  has_and_belongs_to_many :actions
end
