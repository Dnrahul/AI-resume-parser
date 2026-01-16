# 🤖 AI Resume Parser

An AI-powered resume parsing application built with Streamlit that automatically extracts and analyzes information from resume files (PDF, DOCX).

## Features

- 📤 **File Upload**: Support for PDF and DOCX formats
- 👤 **Personal Information Extraction**: Name, email, phone, LinkedIn
- 🛠️ **Skills Detection**: Categorized skills (programming, web development, databases, DevOps, data science, tools)
- 🎓 **Education Parsing**: Degrees, universities, certifications
- 💼 **Work Experience**: Years of experience, companies/organizations
- 📊 **Data Visualization**: Interactive charts and statistics
- 📥 **Export Results**: Download parsed data as CSV or text report
- 🎯 **NLP-Powered**: Uses spaCy for Named Entity Recognition

## Installation

### Prerequisites
- Python 3.8+
- pip (Python package manager)

### Setup

1. **Clone the repository**
```bash
git clone https://github.com/Dnrahul/AI-resume-parser.git
cd AI-resume-parser
```

2. **Create a virtual environment (optional but recommended)**
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. **Install dependencies**
```bash
pip install -r requirements.txt
```

4. **Download spaCy model** (if not already downloaded)
```bash
python -m spacy download en_core_web_sm
```

## Usage

### Run Locally

```bash
streamlit run app.py
```

The app will open in your browser at `http://localhost:8501`

### How to Use

1. Upload a resume file (PDF or DOCX)
2. The parser will automatically extract information
3. View results organized by category
4. Download the parsed data if needed

## Project Structure

```
AI-resume-parser/
├── app.py                 # Main Streamlit application
├── resume_parser.py       # Resume parsing logic
├── requirements.txt       # Python dependencies
└── README.md             # This file
```

## Technologies Used

- **Streamlit**: Web UI framework
- **spaCy**: Natural Language Processing
- **pdfplumber**: PDF text extraction
- **python-docx**: DOCX file processing
- **NLTK**: Natural language toolkit
- **Plotly**: Data visualization
- **Pandas**: Data manipulation

## Deployment

### Deploy to Streamlit Cloud (Easiest)

1. **Push code to GitHub** (Already done ✓)
   ```bash
   git add .
   git commit -m "Update code"
   git push origin main
   ```

2. **Deploy on Streamlit Cloud**
   - Go to [share.streamlit.io](https://share.streamlit.io)
   - Sign in with GitHub
   - Click "New app"
   - Select repository: `Dnrahul/AI-resume-parser`
   - Branch: `main`
   - File path: `app.py`
   - Click "Deploy"

   **Live URL**: Your app will be available at `https://<your-username>-ai-resume-parser.streamlit.app`

### Alternative Deployment Options

#### Deploy to Heroku
```bash
# Install Heroku CLI and login
heroku login

# Create Procfile
echo "web: streamlit run app.py --logger.level=error" > Procfile

# Create setup.sh
echo "mkdir -p ~/.streamlit && echo '[server]\nheadless = true\nport = \$PORT\nenableXsrfProtection = false' > ~/.streamlit/config.toml" > setup.sh

# Deploy
git add Procfile setup.sh
git commit -m "Add Heroku deployment files"
heroku create <your-app-name>
git push heroku main
```

#### Deploy to Railway
1. Connect your GitHub repository to [Railway](https://railway.app)
2. Add environment variables if needed
3. Deploy with one click

#### Deploy to Render
1. Go to [Render](https://render.com)
2. Connect GitHub repository
3. Select "Web Service"
4. Build command: `pip install -r requirements.txt && python -m spacy download en_core_web_sm`
5. Start command: `streamlit run app.py`
6. Add environment variables: `STREAMLIT_SERVER_HEADLESS=true`

## Configuration

### Streamlit Configuration (for deployment)

Create `.streamlit/config.toml`:
```toml
[server]
headless = true
port = 8501
enableXsrfProtection = false

[logger]
level = "error"

[client]
showErrorDetails = false
```

## API Documentation

### ResumeParser Class

#### Methods

- **`parse_resume(file_path)`**: Main parsing method
  - **Input**: Path to PDF or DOCX file
  - **Output**: Dictionary with extracted information
  - **Returns**:
    ```python
    {
        'success': bool,
        'name': str,
        'contact_info': {
            'email': str,
            'phone': str,
            'linkedin': str
        },
        'skills': {
            'category': [list of skills]
        },
        'education': [list of education entries],
        'experience': {
            'years': str,
            'companies': [list of companies]
        },
        'text_length': int,
        'raw_text': str
    }
    ```

## Troubleshooting

### PDF Extraction Issues
- Ensure PDFs are text-based, not scanned images
- Try converting PDF to DOCX using online tools
- Check that PDF has sufficient text content

### spaCy Model Not Found
```bash
python -m spacy download en_core_web_sm
```

### NLTK Data Missing
```python
import nltk
nltk.download('stopwords')
nltk.download('punkt')
```

## Performance Tips

- Use text-based PDFs for better accuracy
- Avoid very long or scanned documents
- DOCX format often works better than PDF

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Future Enhancements

- [ ] Batch processing multiple resumes
- [ ] Custom skill database
- [ ] Resume scoring
- [ ] Multi-language support
- [ ] Advanced NER model
- [ ] API endpoint

## License

This project is open source and available under the MIT License.

## Author

**Rahul** - [GitHub Profile](https://github.com/Dnrahul)

## Contact

- Email: rahulve216@gmail.com
- GitHub: [@Dnrahul](https://github.com/Dnrahul)

---

**Last Updated**: January 16, 2026
