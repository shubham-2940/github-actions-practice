# 1. Use an official base image (e.g., Python, Node, Ubuntu, or Alpine Linux)
FROM python:3.11-slim

# 2. Set the inside folder where commands will run
WORKDIR /app

# 3. Copy files from your computer into the container
COPY . /app

# 4. Run commands to install packages during the build process
RUN pip install --no-cache-dir -r requirements.txt

# 5. Tell the container which command to execute when it boots up
CMD ["python", "main.py"]