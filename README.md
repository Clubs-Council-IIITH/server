# Clubs Council IIITH Web

## Dependencies
- [Docker](https://docs.docker.com/engine/install/) 
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup (Dev Environment)
Clone the main repository:
```
git clone https://github.com/Clubs-Council-IIITH/server.git clubs_council
```

Inside it, clone the application repositories:
```
cd clubs_council
git clone https://github.com/Clubs-Council-IIITH/backend.git
git clone https://github.com/Clubs-Council-IIITH/frontend.git
```

Copy .env file:
```
cp .env.example .env
```

Build and spin up all services (`-d` to run in detached mode):
```
docker-compose up --build -d
```

By default, the ReactJS app (with hot reload) is served at `http://localhost:3000`, while the GraphQL API is served at `http://localhost:8000`.

To stop all running services belonging to this application (`-v` to remove all volumes):
```
docker-compose down -v
```

## Deployment (Prod Environment)
```
TODO
```
