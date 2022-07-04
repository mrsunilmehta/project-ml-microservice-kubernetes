FROM python:3.7.3-stretch

## Step 1: Specify a working directory
WORKDIR /app

## Step 2:Copy the app.py source code to that directory
COPY . app.py /app/

## Step 3:Install any dependencies
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:Expose a port when the container is created
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]