FROM strapi/base

# Define Workdir
WORKDIR /srv/app

# Install deps
COPY ./app/package.json ./
RUN yarn install

# Bundle app source
COPY ./app .

# Expose port
EXPOSE 1337

# Build & Run
RUN yarn build
CMD ["yarn",  "start"]
