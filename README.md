Create everything index EFU

see https://www.voidtools.com/support/everything/file_lists/

One index per folder in /mnt

```
version: '3'
services:
  everything:
    container_name: everything
    image: fensoft/everything-efu-gen:latest
    restart: always
    hostname: everything
    volumes:
      - bla:/mnt/bla:z
    environment:
      - CRON=5 0 * * *
```
