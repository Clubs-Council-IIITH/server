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

Copy .env file and set permissions for the compose script:
```
cp .env.example .env
chmod a+x compose.sh
```

Build and spin up all services (`-d` to run in detached mode):
```
./compose.sh up -d
```

By default, the ReactJS app (with hot reload) is served at `http://localhost:3000`, while the GraphQL API is served at `http://localhost:8000`.

To stop all running services belonging to this application (`-v` to remove all volumes):
```
./compose.sh down -v
```

## Compose Script
The script [compose.sh](compose.sh) is a wrapper around the `docker-compose` script to use the right config yml for development.  
