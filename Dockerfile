FROM ahmed2782004/Afrotoo3:slim-buster

#clonning repo 
RUN git clone https://github.com/ahmed2782004/Afrotoo3.git /root/AfrotooRUB
#working directory 
WORKDIR /root/AfrotooUB

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/AfrotooRUB/bin:$PATH"

CMD ["python3","-m","AfrotooRUB"]
