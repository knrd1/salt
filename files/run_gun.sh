#!/bin/bash
cd /home/ubuntu/blog && gunicorn --reload www:app &
