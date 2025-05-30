FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Expose port 8080 untuk Cloud Run
EXPOSE 8080

# Jalankan Streamlit dengan port 8080 (Cloud Run akan menggunakan port ini)
CMD ["streamlit", "run", "streamlit_app.py", "--server.port=8080", "--server.address=0.0.0.0"]
