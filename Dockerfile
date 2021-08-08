FROM strapi/strapi

WORKDIR /srv/app
COPY ./app/package.json ./
COPY ./app/yarn.lock ./
COPY ./app .
RUN yarn install

RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]