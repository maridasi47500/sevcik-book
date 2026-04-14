import re
import nltk
from nltk.corpus import stopwords
from nltk.corpus import words as nltk_words

# Download required NLTK data (only first run)
nltk.download('stopwords')
nltk.download('words')

# Prepare English dictionary and stopword set
english_words = set(w.lower() for w in nltk_words.words())
stop_words = set(stopwords.words('english'))

def is_meaningful_line(line, min_word_ratio=0.5):
    """
    Check if a line contains enough valid words to be considered meaningful.
    min_word_ratio: fraction of valid words required in the line.
    """
    # Extract alphabetic words
    tokens = re.findall(r"[a-zA-Z]+", line.lower())
    if not tokens:
        return False  # No words at all

    # Count valid words (in dictionary and not stopwords)
    valid_words = [w for w in tokens if w in english_words and w not in stop_words]

    # Check ratio of valid words
    return len(valid_words) / len(tokens) >= min_word_ratio

def filter_meaningful_lines(text):
    """
    Remove meaningless lines from a multi-line string.
    """
    lines = text.splitlines()
    return "\n".join(line for line in lines if is_meaningful_line(line))

# Example usage
raw_text = """
Hello world
12345 !!!!
the and is
Python NLP preprocessing is fun
asdf qwer zxcv
"""
filename_text="somesevcikscores.hey"
raw_text = open(filename_text, 'r').read()


cleaned_text = filter_meaningful_lines(raw_text)
#raw_text.close()
print("Cleaned text:\n", cleaned_text)
# Ouvre le fichier en mode écriture et remplace son contenu
with open("exemple.txt", "w") as fichier:
   fichier.write(cleaned_text)

