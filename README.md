# node-rest-api-demo
A simple RESTful API built using Node.js, MySQL with Docker compose

## How to start the RESTful API
Make sure your computer has a newer version of Docker with Docker Compose CLI before running this project. Clone the repository with the following command:

```bash
git clone https://github.com/codezri/node-rest-api-demo.git
cd node-rest-api-demo
```

Start Docker Compose services:
```bash
docker-compose up -d
```

Once the MySQL and Node.js containers are up, you can access the API with the following URL:
```bash
http://localhost:5000
```

## How to run load tests
This project uses the [Artillery test runner](https://github.com/artilleryio/artillery) to run load tests. First, install the Artillery CLI into your computer:
```bash
npm install -g artillery@latest
# --- or ---
yarn global add artillery@latest
```

Make sure the web service works by sending a simple HTTP request as follows:
```bash
curl http://localhost:5000
```

Run the load test suite:
```bash
npm run load-test
# --- or ---
yarn load-test
```

## Credits
Thanks [Jeremy Morgan](https://github.com/JeremyMorgan) for creating [this public Gist](https://gist.github.com/JeremyMorgan/5833666). I added US state details to the [demo_db.sql](./db_dumps/demo_db.sql) file using that Gist's content.

## License
[MIT](LICENSE)
