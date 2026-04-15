# --- Block 1: Identity ---
['Solo', 'Exercice', 'Étude', 'Passage d\'orchestre'].each { |t| PieceType.find_or_create_by!(name: t) }

['pp', 'p', 'mp', 'mf', 'f', 'ff', 'sfz'].each { |n| Nuance.find_or_create_by!(name: n) }

['Dolce', 'Maestoso', 'Sotto Voce', 'Scherzando', 'Cantabile', 'Agitato'].each { |c| Caractere.find_or_create_by!(name: c) }

# --- Block 2: Structure & Ear ---
['Gamme', 'Chromatique', 'Arpège', 'Accords', 'Rythme Répétitif'].each { |n| HarmoniqueNature.find_or_create_by!(name: n) }

['7th Dim', '9th', 'Maj/Min', 'Broken Chords'].each { |a| TypeAccord.find_or_create_by!(name: a) }

['3rds', '6ths', '8ves', '10ths', '4-note chords'].each { |i| Intervalle.find_or_create_by!(name: i) }

['Soprano', 'Alto', 'Tenor', 'Bass'].each { |v| Voice.find_or_create_by!(name: v) }

# --- Block 2bis: Rhythmic Morphology ---
{ 'Ronde': '1', 'Blanche': '2', 'Noire': '4', 'Croche': '8', 'Double': '16', 'Triple': '32' }.each do |name, value|
  MeasureUnit.find_or_create_by!(name: "#{name} (#{value})")
end

['Pointé (dot)', 'Triolet (tuplet)', 'Liaison (tie)'].each { |m| Modificateur.find_or_create_by!(name: m) }

['Louré style', 'Syncope', 'Contretemps', 'Passage de virtuosité'].each { |r| RhythmicType.find_or_create_by!(name: r) }

['Soupir', 'Point d\'orgue (fermata)'].each { |s| Silence.find_or_create_by!(name: s) }

# --- Block 3: Bow Mechanics ---
['WB (Entier)', 'HB (Demi)', '1/3 (Tiers)', '1/4 (Quart)'].each { |p| BowPortion.find_or_create_by!(name: p) }

['Nut (Talon)', 'M (Milieu)', 'Tip (Pointe)'].each { |l| BowLocation.find_or_create_by!(name: l) }

['Tiré (Down)', 'Poussé (Up)', 'Broad (Large)'].each { |a| BowArticulation.find_or_create_by!(name: a) }

['Legato', 'Martelé', 'Spiccato', 'Ricochet', 'Sautillé', 'Collé'].each { |t| BowTechnique.find_or_create_by!(name: t) }

# --- Block 4: Left Hand ---
['G (IV)', 'D (III)', 'A (II)', 'E (I)', 'Corde à vide'].each { |s| Mystring.find_or_create_by!(name: s) }

(1..12).each { |p| Position.find_or_create_by!(name: "#{p}#{p == 1 ? 'st' : (p == 2 ? 'nd' : (p == 3 ? 'rd' : 'th'))} Position") }

['Double-stops', 'Trill', 'Vibrato', 'Glissando', 'Pizz (MG)', 'Flageolet'].each { |t| LeftHandTechnique.find_or_create_by!(name: t) }

# --- Block 5: Biomechanics ---
['Pouce', 'Poignet', 'Coude', 'Épaule'].each { |f| Focus.find_or_create_by!(name: f) }

['Glisser (Slide)', 'Ne pas lever (Keep down)', 'Pivoter (Pivot)', 'Indépendance'].each { |a| Action.find_or_create_by!(name: a) }

puts "Successfully seeded musical nomenclature!"
# 1. Define the fragment title
title_to_seed = "Double stops in sixths and fourths"

# 2. Find or create the MusicalFragment first
fragment = MusicalFragment.find_or_create_by!(title: title_to_seed)

# 3. Define a helper to parse and link associations
# This method looks at a specific model, checks if its name exists in the title, 
# and creates the HABTM link if it does.
def link_associations_from_title(fragment, model_class, association_name)
  # We fetch all names from the table (e.g., ["Sixth", "Fourth", "Third"])
  available_records = model_class.all
  
  available_records.each do |record|
    # We use a case-insensitive regex to see if the word exists in the title
    # Example: /sixths/i matches "sixths" in the title
    if fragment.title.match?(/#{record.name.downcase}/i)
      # Link the record if it's not already associated
      unless fragment.send(association_name).include?(record)
        fragment.send(association_name) << record
      end
    end
  end
end

# 4. Execute the parsing for Intervalles
# Assumes 'intervalles' table has records named "Sixth" and "Fourth"
link_associations_from_title(fragment, Intervalle, :intervalles)

# 5. Execute the parsing for TypeAccords
# Assumes 'type_accords' table has a record named "Double stop"
link_associations_from_title(fragment, TypeAccord, :type_accords)

puts "Successfully processed '#{fragment.title}'"
puts "Linked Intervals: #{fragment.intervalles.pluck(:name)}"
puts "Linked Types: #{fragment.type_accords.pluck(:name)}"
