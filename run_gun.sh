#!/bin/bash
cd /home/ubuntu/blog && gunicorn www:app &
