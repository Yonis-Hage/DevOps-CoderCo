FROM python:3.9

WORKDIR /app

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy application files
COPY . .

# Expose port and run the application
EXPOSE 5002
CMD ["python", "app.py"]