#!/bin/bash

cat file.json  | jq -c '[
                      [
                       .[] | select(.type | startswith("file")) | { "id":  .id, "name" : .name,"links": .wires[]}
                      ] |
                      {"lookup": ( [
                                    .[] | {"key": .id, "value": .name}
                                   ] | from_entries) ,
                       "data": . 
                      } |
                      .lookup as $lookup |
                      .data[] | .newLinks = [.links[] | $lookup[.]] |
                      del(.links) | 
                      {"source": .name, "target": .newLinks} |
                      {"source" : .source, "target": .target[]}
                    ] '
