#!/bin/bash

# Replace placeholders in HTML with environment variables
envsubst < /usr/share/nginx/html/sr-landing.html > /usr/share/nginx/html/index.html
rm /usr/share/nginx/html/sr-landing.html
