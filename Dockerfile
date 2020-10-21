FROM node:10

RUN npm install express \
&& npm install --save express @line/bot-sdk
COPY index.html /root
WORKDIR /root
RUN apt-get update && apt-get install -y curl unzip zip && curl -s "https://get.sdkman.io" | bash && bash -c  'source "/root/.sdkman/bin/sdkman-init.sh" && sdk list java && sdk install java 14.0.2-open'
CMD ["node","index.html"]
