@echo off

python -m smtpd -c DebuggingServer -n localhost:1025
