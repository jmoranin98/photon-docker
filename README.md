# Photon Docker Peru

Fork of [Photon Docker](https://github.com/thomasnordquist/photon-docker) to download only Peru data

Feel free to fork and improve.


# Run

The image itself is pretty small, the first time the container is executed, a 30GB searchindex will be downloaded.
The data volume is exposed as `/photon/photon_data` and can be mounted, this way you'll only have to download the data once.

## With `docker run`

```bash
docker run -p 2322:2322 -it <image_name>
```

## Search

```
http://localhost:2322/api?q=berlin
```
*For more details on the API check the photon [github repository](https://github.com/komoot/photon).*



## Build from git
https://github.com/jmoranin98/photon-docker

### With docker-compose
```bash
docker-compose build #optional
docker-compose up
```
*Note: if you abort the download, you have to remove the volume `photon_data` before restarting the container*


### With `docker build`
```bash
docker build --tag photon-geocoder-peru .
```


## FAQ

 - How do I pass arguments to the `photon.jar` ?

   *The entrypoint accepts arguments for the `photon.jar`, you can invoke it by using `docker exec`*
 - Do I need to have nominatim ?

   *The container downloads the latest prebuilt search index, there is no immediate need to have nominatim installed.*

 - What is photon ?
  
   *photon is a geocoder, check out [their website](https://photon.komoot.de/) and their [github repository](https://github.com/komoot/photon)*
