# Network visualisation

Very basic library to provide a directed graph. Intended to be used to map Kubernetes network policies but may have wider use.

A small addition on top of the d3.js code found at http://bl.ocks.org/mbostock/raw/1153292/

## How to use

1. Replace `data.json` with the required data
2. Run the `launchInDocker.sh` script
3. That's it!

The script will delete then create a container called `netviz`, which hioepfully isn't  name clash.


## Node converter

Use the follwing commadn to stand up NodeRed:

```
docker run -it -p 1880:1880 --name mynodered nodered/node-red-docker
```

Using links and files, build a map of connections. Copy the output to a file, and run the `nodeConverter.sh` file to generate the data.json
