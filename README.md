# AI for trading

Build a Docker image

```console
docker build --tag ai-for-trading .
```

Run a Docker container

```console
docker run -it --rm -v $PWD:/workspace/AI-for-trading -p 8888:8888 ai-for-trading
```

Tag a Docker Image and push to Docker Hub (might need `sudo`)

```console
docker tag ai-for-trading tqa236/ai-for-trading:latest
docker push tqa236/ai-for-trading:latest
```

## TODO:

-   Test all projects
-   P8: data
-   Add a variable to build a customized Docker image for each project
-   Add Colab badge for independent run
-   Run unittest for all projects (testbook, treon)
