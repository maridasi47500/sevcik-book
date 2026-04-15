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
  after_create :hello
  after_update :hello
  def hello
    # The title we want to parse and seed
    title_string = title#"Double stops in sixths and fourths"
    
    # 1. Initialize or find the MusicalFragment
    #self = MusicalFragment.find_or_create_by!(title: title_string)
    
    # 2. Define the associations to check
    # Mapping the association name to the Model class
    belongs_to_associations = {
      nuance: Nuance,
      caractere: Caractere,
      bow_portion: BowPortion,
      bow_location: BowLocation,
      position: Position,
      focus: Focus,
      source_title: SourceTitle
    }
    
    habtm_associations = {
      intervalles: Intervalle,
      type_accords: TypeAccord,
      harmonique_natures: HarmoniqueNature,
      measure_units: MeasureUnits, 
      voices: Voice,
      mystrings: Mystring,
      left_hand_techniques: LeftHandTechnique
    }
    
    # 3. Logic for belongs_to (Assigns a single ID)
    belongs_to_associations.each do |assoc, model|
      # Look for a record where the name/title exists within the title_string
      # Assumes your tables have a 'name' or 'label' column
      match = model.all.find { |record| title_string.downcase.include?(record.name.downcase) }
      
      if match
        self.update("#{assoc}_id": match.id)
        puts "Matched belongs_to: Assigned #{match.name} to #{assoc}"
      end
    end
    
    # 4. Logic for many-to-many (Shovels multiple records)
    habtm_associations.each do |assoc, model|
      matches = model.all.select { |record| title_string.downcase.include?(record.name.downcase) }
      
      if matches.any?
        # Using .replace or .append to avoid duplicates
        self.send("#{assoc}=", matches) 
        puts "Matched HABTM: Added #{matches.map(&:name).join(', ')} to #{assoc}"
      end
    end
    
    #self.save!
  end
end
