# AI for trading

Build a Docker image

```console
docker build --tag ai-for-trading .
```

Run a Docker container

```console
docker run -it --rm -v $PWD:/workspace/AI-for-trading -p 8888:8888 ai-for-trading
```

## TODO:

-   Test all projects
-   P5: yr-quotemedia.csv
-   Add a variable to build a customized Docker image for each project
-   Add Colab badge for independent run
-   Upload the ready-to-use Docker image to Docker Hub
