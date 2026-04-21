import os
import sys
import pytesseract
from pdf2image import convert_from_path
from PIL import Image

def extract_text_from_scanned_pdf(page_image, tesseract_cmd=None, dpi=300, lang='eng'):
    """
    Extracts text from a scanned PDF using Tesseract OCR.

    Args:
        page_image (str): Path to the scanned PDF file.
        tesseract_cmd (str, optional): Path to the Tesseract executable (if not in PATH).
        dpi (int): Resolution for PDF to image conversion.
        lang (str): Language code for OCR (e.g., 'eng', 'fra').

    Returns:
        str: Extracted text from the PDF.
    """
    if not os.path.isfile(page_image):
        raise FileNotFoundError(f"PDF file not found: {page_image}")

    # Configure Tesseract path if provided
    if tesseract_cmd:
        pytesseract.pytesseract.tesseract_cmd = tesseract_cmd


    extracted_text = []
    try:
        # Perform OCR on the page image
        custom_config = r'-l deu+fra+eng --psm 6'
        text = pytesseract.image_to_string(page_image, lang=lang, config=custom_config)
        extracted_text.append(f"--- Page {page_image} ---\n{text.strip()}")
    except Exception as e:
        print(f"Error processing page {page_image}: {e}", file=sys.stderr)

    return "\n\n".join(extracted_text)


if __name__ == "__main__":
    # Example usage
    pdf_file = "scanned_document.pdf"  # Replace with your PDF path
    files = [f for f in os.listdir('.') if os.path.isfile(f)]
    files = filter(lambda f: f.endswith(('.png','.PNG')), files)
    tesseract_path = None  # e.g., r"C:\Program Files\Tesseract-OCR\tesseract.exe" on Windows
    MyText=""

    try:
        for pdf_file in files:
            try:
              filename2="done.hey"
              mode = "a"
              try:
                  with open(filename2, mode, encoding="utf-8") as file:
                      file.write(pdf_file + "\n")  # Add newline for readability
              except OSError as e:
                  print(f"File error: {e}")
              text_output = extract_text_from_scanned_pdf(pdf_file, tesseract_cmd=tesseract_path, lang='eng')

              filename="quiteawesomesevcikscores.hey"

              print("Extracted Text:\n")
              print(text_output)

    
              try:
                  



                  with open(filename, mode, encoding="utf-8") as file:
                      file.write(text_output + "\n")  # Add newline for readability
                  print(f"Data successfully written to '{filename}' in mode '{mode}'.")
              except OSError as e:
                  print(f"File error: {e}")
            except OSError as e:
                print(f"File error: {e}")
    except Exception as e:
        print(f"Error: {e}")

