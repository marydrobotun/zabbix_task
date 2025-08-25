#!/usr/bin/python3
import json
lld =  [{"{#METRIC_NAME}": f"metric{i+1}"} for i in range(3)]

print(json.dumps(lld))