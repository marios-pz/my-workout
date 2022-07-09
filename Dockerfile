FROM node:18-alpine

WORKDIR /app

COPY ./app .

RUN npm install && npm install -D tailwindcss postcss autoprefixer svelte-preprocess

RUN \cp -r ./node_modules/tw-elements ./public

CMD [ "npm", "run", "dev"]