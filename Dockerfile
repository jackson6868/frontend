from node:alpine

WORKDIR '/app'

copy package.json .
run npm install

copy . .
cmd ["npm","run","build"] 


from nginx
copy --from=0 /app/build /usr/share/nginx/html
