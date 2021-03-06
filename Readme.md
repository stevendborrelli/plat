##About 
Unix and Linux systems do not have a standardized way of providing basic platform information.

`plat` will attempt to determine the operating system, version and chip architecture. 

##Usage
```
./plat [-a] [-n] [-p] [-v] [-c directory]
        -a              show all fields
        -n              show operating system
        -p              show processor type
        -v              show version
```

Get the name of the operating system: 
```
./plat -n  
osx
```

Get the version of the operating system:
```
./plat -v 
10.8.4
```

Show all fields (default): 
```
./plat

NAME=ubuntu
VERSION_ID=12.04
PROCESSOR=x86_64

```

###Running off of github 

```/usr/bin/curl -s https://raw.github.com/stevendborrelli/plat/master/plat | bash```

##Supported platforms
`plat` was tested on:

```
Centos  6.4
Debian  6.0
Fedora  19 
OSX     10.8
Redhat  6.3
```

##Other ways to get platform information

###Python

```python -c 'import platform; print(platform.dist()[0:2])'```

This library has given me some inconsistent results, so it is not used in plat. 
