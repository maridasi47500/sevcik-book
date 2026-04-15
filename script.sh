#1. Bloc : Identité & Contexte (Le "Quoi")
#
#Ce bloc définit l'origine et le cadre musical de l'exercice.
#
#    Type de pièce : [Solo] [Exercice] [Étude] [Passage d'orchestre]
rails g scaffold piece_type name
#
#    Source : f.text_field :source_title (ex: Violin Piece ID / Opus)
rails g scaffold source_title musical_instrument_id composer id_opus number
#
#    Localisation : Mesures [  ] à [  ]
#
#    Identifiant LilyPond : f.text_field :lilypond_id (ex: \fragment_A)
#
#    Théorie : * Tonalité : [Select Key] | Rythme : [Select Time]
#
#        Nuance : [pp] [p] [mp] [mf] [f] [ff]
rails g scaffold nuance name
#
#        Caractère : [Dolce] [Maestoso] [Sotto Voce] [Scherzando]
rails g scaffold caractere name
#
#2. Bloc : Structure & Oreille (La Théorie)
#
#Analyse de la nature harmonique et structurelle.
#
#    Nature : ( ) Gamme | ( ) Chromatique | ( ) Arpège | ( ) Accords | ( ) Rythme Répétitif
rails g scaffold harmonique_nature name
#
#    Type d'Accord : [7th Dim] [9th] [Maj/Min] [Broken Chords]
rails g scaffold type_accord name
#
#    Intervalles (Checkboxes) : [ ] 3rds [ ] 6ths [ ] 8ves [ ] 10ths [ ] 4-note chords
rails g scaffold intervalles name
#
#    Contrepoint : * Voix : [ ] Soprano [ ] Alto [ ] Tenor [ ] Bass
rails g scaffold voices name
#
#        Voix Mobile : [None / Soprano / Bass / Inner]
#2bis. Bloc : Morphologie Rythmique (Le "Temps")
#
#Détail des durées et des cellules rythmiques rencontrées.
#
#    Unités de mesure (LilyPond durations) :
#
#        [ ] Ronde (1) | [ ] Blanche (2) | [ ] Noire (4) | [ ] Croche (8) | [ ] Double (16) | [ ] Triple (32)
rails g scaffold measure_unit name
#
#    Modificateurs :
#
#        [ ] Pointé (dot) | [ ] Triolet / N-uolet (tuplet) | [ ] Liaison de prolongation (tie)
rails g scaffold modificateur name
#
#    Cellules Rythmiques Types :
#
#        [ ] Crochet-pointée/double (Louré style)
#
#        [ ] Syncope
#
#        [ ] Contretemps
#
#        [ ] Groupe de notes rapides (Passage de virtuosité)
rails g scaffold rhythmic_type name
#
#    Silence : [ ] Soupir | [ ] Point d'orgue (fermata)
rails g scaffold silence name
#
#3. Bloc : Mécanique de l'Archet (Main Droite)
#
#Utilisation des divisions d'archet et techniques de conduite.
#
#    Division (LilyPond Style) :
#
#        Portion : [WB (Entier)] [HB (Demi)] [1/3 (Tiers)] [1/4 (Quart)]
rails g scaffold bow_portion name
#
#        Localisation : [Nut (Talon)] [M (Milieu)] [Tip (Pointe)]
rails g scaffold bow_location name
#
#        Précision : [ ] 1er Tiers | [ ] 2e Tiers | [ ] 3e Tiers | [ ] 2e & 3e Quarts
rails g scaffold bow_precise_location name
#
#    Direction & Articulation :
#
#        Coup : [⬇ Tiré (Down)] [⬆ Poussé (Up)] [Broad (Large)]
rails g scaffold bow_articulation name
#
#        Technique : [Legato] [Martelé] [Spiccato] [Ricochet] [Golpe di arco]
rails g scaffold bow_technique name
#
#        Signes : [ ] Lever l'archet (',') | [ ] Pause expressive (//)
rails g scaffold bow_signs name
#
#    Phrasé : [Slurred by 2] [Slurred by 4] [Detached] | Variations : [ 0-99 ]
rails g scaffold musical_phrasing name
#
#4. Bloc : Mécanique Digitale (Main Gauche)
#
#Positionnement et articulations des doigts.
#
#    Corde : [ ] G (IV) [ ] D (III) [ ] A (II) [ ] E (I) | [ ] Corde à vide
rails g scaffold string name
#
#    Position : [1st ... 12th]
rails g scaffold position name
#
#    Techniques : * [ ] Double-stops | [ ] Trill | [ ] Vibrato | [ ] Glissando
rails g scaffold left_hand_technique name
#
#        [ ] Pizz (Main gauche +) | [ ] Flageolet (\harmonic □)
#
#    Maintien : * [ ] Laisser posé (Petit crochet) | [ ] Doigt de transition (□ sans pied)
rails g scaffold fingering name
#
#5. Bloc : Biomécanique (Le "Casse-tête")
#
#Le focus interne de l'élève durant l'exécution.
#
#    Point d'appui (Focus) : [Pouce] [Poignet] [Coude] [Épaule]
rails g scaffold focus name
#
#    Contrainte Doigt : [ ] 1er [ ] 2e [ ] 3e [ ] 4e
rails g scaffold finger_restraint name
#
#    Action : * [ ] Glisser (Slide) | [ ] Ne pas lever (Keep down) | [ ] Pivoter (Pivot)

#
#        [ ] Indépendance (MG levée / Archet reste sur corde)
rails g scaffold action name
#
#
# Main Model
rails g scaffold MusicalFragment title:string source_title:references start_measure:integer end_measure:integer lilypond_id:string nuance:references caractere:references bow_portion:references bow_location:references position:references focus:references

# Join Tables (For Checkboxes)
rails g migration CreateJoinTableFragmentsHarmoniqueNatures musical_fragment harmonique_nature
rails g migration CreateJoinTableFragmentsTypeAccords musical_fragment type_accord
rails g migration CreateJoinTableFragmentsIntervalles musical_fragment intervalle
rails g migration CreateJoinTableFragmentsVoices musical_fragment voice
rails g migration CreateJoinTableFragmentsMeasureUnits musical_fragment measure_unit
rails g migration CreateJoinTableFragmentsModificateurs musical_fragment modificateur
rails g migration CreateJoinTableFragmentsRhythmicTypes musical_fragment rhythmic_type
rails g migration CreateJoinTableFragmentsStrings musical_fragment string
rails g migration CreateJoinTableFragmentsLeftHandTechniques musical_fragment left_hand_technique
rails g migration CreateJoinTableFragmentsActions musical_fragment action
