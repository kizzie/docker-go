This is a set of Docker containers which will start up three machines, two running a simple go application and the third running nginx.

To run:

1. Clone the repository
2. Run the docker-compose file

``` git clone https://github.com/kizzie/docker-go.git
docker-compose up -d
```

Assumptions of the system setup:
* you have docker installed
* you have docker-compose installed
* you have virtualbox installed

If you do not want to install docker-compose you can run the script file to start all three containers individually

```./script.sh
```

If you are on windows or a mac then you will need to use docker-machine.

1. Start a new machine
2. Connect to it
3. Note the IP address (you will need this rather than using localhost)
4. Continue as above

Mac:
```
docker-machine create chicken --driver virtualbox
eval $(docker-machine env chicken)
docker-machine ls #to see the IP address
docker-compose up -d
```

Windows:
```
docker-machine create chicken --driver virtualbox
docker-machine env chicken --shell powershell | Invoke-Expression
docker-machine ls
docker-compose up -d
```
Although on the windows machine you are probably better off using the individual lines from the script than docker-compose as it has been known to be a pain.
