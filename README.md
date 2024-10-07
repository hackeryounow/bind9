## bind9

[ X ] The Bind v9.20.2 is supported (`Version 1.0.0`)
[ X ] All versions of Bind are supported (`Version 1.0.1`)


### How to use
1. Download the project.
2. Set environment variables.
`source .env`
3. Build a Bind container and specify the building version by `BIND9_VERSION`.
`sudo BIND9_VERSION=9.18.4 make`
4. Start the DNS service.
`docker-compose up -d`
5. Stop the DNS service.
`docker-compose down`
