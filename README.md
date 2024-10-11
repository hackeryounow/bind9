## bind9

- ✔️ The Bind v9.20.2 is supported (`Version 1.0.0`)

- ✔️ All versions of Bind are supported (`Version 1.0.1`)

- ✔️ Nameserver monitor are supported (`Version 1.0.2`)


### How to use
1. Download the project.
2. Set environment variables.

`source .env`

3. Build a Bind container. Please specify the building version by `BIND9_VERSION` as you need.

`sudo BIND9_VERSION=9.18.4 make`

4. Start the DNS service.

`docker-compose up -d`

5. Stop the DNS service.

`docker-compose down`

6. [Option] Deploy the monitoring module. 

`docker-compose -f docker-compose.monitoring.yaml -p monitoring up -d`

7. A Granfana dashboard `json` file is located in `dashboard/DNS Monitoring.json`
