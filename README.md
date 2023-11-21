POC to setting up local Plex server and plex server usage (local movies) monitoring.

Heimdall to provide homescreen for all services

Flask server used to check that local service can be seen otherwise in home network

In this case suggesting setting permanent IP for server:

1) reserve IP address in router settings for server MAC address

2) fix server IP address   

sudo nano /etc/nixos/configuration.nix

---> add

*networking.useDHCP = false;*

*networking.nameservers = ["1.1.1.1"];*

*networking.defaultGateway = "192.168.0.1";  # router address*

*networking.interfaces.enp0s31f6.ipv4.addresses = [*

*{*

*address = "192.168.0.42"; # fixed ip address*

*prefixLength = 24;*

*}*

*];*

<br>
<br>
<br>

Plex server port is needed to open in Nixos:

sudo nano /etc/nixos/configuration.nix

--> add  *networking.firewall.allowedTCPPorts = [ 32400 33400 ];*

(flask server port opened also)
<br>
<br>
Plexpy and Heimdall confidured via UI for Plex usage
<br>
<br>

### Starting individual services

### Plex Server:
*docker-compose up*

### Flask Hello World server (Nixos usage):

*chmod u+x flasker.py*

*./flasker.py*

### Flexpy:
*docker-compose -f flexpy.html up*

### Heimdall:
*docker-compose -f heimdall.yml up*


## Access via browser:
Heimdall: localhost:82

Plex: localhost:32400/web

Plexy: localhost:8181

flasker.py: localhost:33400
<br>
<br>
TODOS:
Creating settings file for volumes creation and deletion + setting all up (makefile)
