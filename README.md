# android-buildenv-orangepi4

The android-buildenv-orangepi is an Android build Docker environment for OrangePi 4  
You can build an Android image for OrangePi 4 on this docker instead of installing some dependencies.

## Prepare Resource
Download source code (OrangePi4/Android Source Code) from http://www.orangepi.org/downloadresources/ and unzip it. 

Then, (According to the manual PDF)
```
$ mkdir OrangePi_4
$ cat rk3399-android-8.1.tar.gz* > rk3399-android-8.1.tar.gz
$ tar xvf rk3399-android-8.1.tar.gz -C OrangePi_4
```

## Usage

```
cd OrangePi_4/rk3399-android-8.1
docker run --rm -v $(pwd):/workdir aquahika/android-buildenv-orangepi4 ./make.sh -F -M -u 
```


## Note
My **Ryzen 7 3700X** (8 core/16 thread) with modyfied `make.sh` with `make -j16` took approximately **50 minutes** to build whole images (with -F -M -u options). And final result size (include artifacts probably) got be **60GB**.






## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)