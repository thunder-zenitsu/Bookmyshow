FROM node:18
LABEL Author="Thunder"
LABEL Project="BMS"
WORKDIR /app
COPY /Bookmyshow/package.json /Bookmyshow/package-lock.json ./
RUN npm install postcss@8.4.21 postcss-safe-parser@6.0.0 --legacy-peer-deps
RUN npm install
ADD /Bookmyshow/. .
EXPOSE 3000
ENV NODE_OPTIONS=--openssl-legacy-provider
ENV PORT=3000
CMD [ "npm", "start" ]
