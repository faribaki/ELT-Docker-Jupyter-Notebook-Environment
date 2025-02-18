# Use an official Python runtime as a parent image 
FROM python:3.9-slim 
# Set the working directory in the container
WORKDIR /my_docker_project
# Copy the current directory contents into the container at /app
COPY . /my_docker_project
 # Install any needed packages specified in requirements.txt 
RUN pip install --no-cache-dir -r /my_docker_project/requirements.txt
RUN pip install jupyter
# Expose the port the app runs on (if needed, for web applications)
EXPOSE 8888

# Set the command to run Jupyter Notebook with an environment variable for the token
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token=''"]