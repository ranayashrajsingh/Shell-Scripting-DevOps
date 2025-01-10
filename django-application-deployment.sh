#!bin/bash

<< Comment

Deploying a Django app and handling the code from error.
Docker ngnix

Comment

code_clone(){
  echo "-------- Cloning the Django application -----------"
  git clone 
}

install_requirements(){
    echo "Installing dependencies"
    sudo apt get install docker.io nginx -y
}

required_restart(){
    sudo chown $USER /var.run/docker.sock
    sudo systemctl enable docker
    sudo systemctl enable nginx
    systemctl restart docker
}

deploy(){
    docker build -t note-app .
    docker run -d -p 8000:8000 application:latest   
}

echo"--------------------------- DEPLOYMENT STARTED ---------------------------"
if ! code_clone; then
    echo "The code directory already exists"
    cd application_name
fi

if ! install_requirements; then
    echo "Installation failed"
    exit 1
fi

if ! required_restart; then
    echo "System fault indentified"
    exit 1
fi

if ! deploy; then
    echo "Deployment failed, mailing the admin"
    exit 1
fi


echo"--------------------------- DEPLOYMENT SUCEESSFULLY  ---------------------------"