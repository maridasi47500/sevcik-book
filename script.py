import os
import sys
import pytesseract
from pdf2image import convert_from_path
from PIL import Image

def extract_text_from_scanned_pdf(pdf_path, tesseract_cmd=None, dpi=300, lang='eng'):
    """
    Extracts text from a scanned PDF using Tesseract OCR.

    Args:
        pdf_path (str): Path to the scanned PDF file.
        tesseract_cmd (str, optional): Path to the Tesseract executable (if not in PATH).
        dpi (int): Resolution for PDF to image conversion.
        lang (str): Language code for OCR (e.g., 'eng', 'fra').

    Returns:
        str: Extracted text from the PDF.
    """
    if not os.path.isfile(pdf_path):
        raise FileNotFoundError(f"PDF file not found: {pdf_path}")

    # Configure Tesseract path if provided
    if tesseract_cmd:
        pytesseract.pytesseract.tesseract_cmd = tesseract_cmd

    try:
        # Convert PDF pages to images
        pages = convert_from_path(pdf_path, dpi=dpi)
    except Exception as e:
        raise RuntimeError(f"Error converting PDF to images: {e}")

    extracted_text = []

    for page_number, page_image in enumerate(pages, start=1):
        try:
            # Perform OCR on the page image
            text = pytesseract.image_to_string(page_image, lang=lang)
            extracted_text.append(f"--- Page {page_number} ---\n{text.strip()}")
        except Exception as e:
            print(f"Error processing page {page_number}: {e}", file=sys.stderr)

    return "\n\n".join(extracted_text)


if __name__ == "__main__":
    # Example usage
    pdf_file = "scanned_document.pdf"  # Replace with your PDF path
    files = [f for f in os.listdir('.') if os.path.isfile(f)]
    files = filter(lambda f: f.endswith(('.pdf','.PDF')), files)
    tesseract_path = None  # e.g., r"C:\Program Files\Tesseract-OCR\tesseract.exe" on Windows
    MyText=""

    try:
        for pdf_file in files:
            try:
              text_output = extract_text_from_scanned_pdf(pdf_file, tesseract_cmd=tesseract_path, lang='eng')
              print("Extracted Text:\n")
              print(text_output)
              mode = "a"
    
              try:
                  
                  filename2="done.hey"
                  filename="awesomesevcikscores.hey"
                  with open(filename2, mode, encoding="utf-8") as file:
                      file.write(filename + "\n")  # Add newline for readability
                  with open(filename, mode, encoding="utf-8") as file:
                      file.write(text_output + "\n")  # Add newline for readability
                  print(f"Data successfully written to '{filename}' in mode '{mode}'.")
              except OSError as e:
                  print(f"File error: {e}")
            except OSError as e:
                print(f"File error: {e}")
    except Exception as e:
        print(f"Error: {e}")

