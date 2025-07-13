#!/bin/bash

chown -R node:node /home/node/.n8n

exec gosu node n8n
