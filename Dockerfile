FROM aquabotwa/sanuwa-official:beta 

RUN git clone https://github.com/BlackPanther-svg/Malshan-Bot /root/aquabot
WORKDIR /root/aquabot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
