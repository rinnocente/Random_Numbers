
# Random Numbers

For the 2018  Montecarlo Course. 

Random Numbers (Roberto Innocente - SISSA)  :

- download the docker image with most of the generators and
   tests described in the course
```
   docker pull rinnocente/rng-docker-2018
```
   (  3 GB, better if you share among you with a usb pen)
   
   This docker can be run simply with :
```
    docker run -p 8888:8888 -it rinnocente/rng-docker-2018
```
in this way you will be prompted by a bash shell as user rng.
   
The jupyter port of the container will be mapped to the
jupyter port of your host and you can access it with your browser at
```
     http://localhost:8888/
 ```
 If you already have a jupyter running, close it or remap the maxima jupyter on another host port.
 
 To use the maxima-jupyter interface :
 ```
 cd jupy
 jupyter notebook --ip=0.0.0.0 --port=8888 --Session.key="b''" 
 ```
 and from your host open in your browser a tab on localhost:8888
 
 
 The files in this directory are :
 - lecture notes **rng-2018.pdf**  
 
 
 Then various jupyter notebooks for maxima in :
 - **.ipynb** jupyter notebook format
 - **.m** maxima source code (To be used with plain maxima)
 - printed notebook in **.pdf**
 
 The notebooks are about arguments in Finite Field theory and practice  :
 - 01-Z_p  prime fields
 - 02-F_q  prime power fields also known as Galois Fields extensions GF(q)
 - 03-Primitive polynomials in Finite Fields
 - 04-LFSR
 - 05-GSM encryption A5/1
 - 06-GFSR
 - 07-T400
 - 08-T800
 - 09-Tempering
 - 10-Design a TGFSR
 - 11-Design a Mersenne Twister 
 
 
 
