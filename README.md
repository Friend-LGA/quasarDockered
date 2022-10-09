```
docker build -t quasar .
docker run -v $(pwd):/build quasar build -m electron
```
