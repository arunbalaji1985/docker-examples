# Dockerize React app + Webpack

## Code structure

 * `src` - relevant source
 * `webpack.config.js` - basic webpack configuration
 * `nginx.conf` - basic nginx configuration
 * `Dockerfile` - builds node app and deploys it via nginx

## Steps
 1. `cd react-webpack`
 2. Build the image
 ```
 docker build . -t docker-react-webpack
 ```
 3. Run the image in a container mapping nginx port to 8081 (could be any open port)
 ```
 docker run -p 8081:80 -d docker-react-webpack
 ```
 4. Hit http://localhost:8081 and see the app composed by `src/App.js`

 
