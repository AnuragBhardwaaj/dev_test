# Step 1: Use a base image with Python installed
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Step 4: Install the dependencies
RUN pip install -r requirements.txt

# Step 5: Copy the entire application to the container's working directory
COPY . /app/

# Step 6: Expose port 5000 for the web server
EXPOSE 5000

# Step 7: Command to run the app
CMD ["python", "prog1.py"]
