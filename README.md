# Network visualisation

Very basic library to provide a directed graph. Intended to be used to map Kubernetes network policies but may have wider use.

A small addition on top of the d3.js code found at http://bl.ocks.org/mbostock/raw/1153292/

## How to use

1. Replace `data.json` with the required data
2. Run the `launchInDocker.sh` script
3. That's it!

The script will delete then create a container called `netviz`, which hioepfully isn't  name clash.
