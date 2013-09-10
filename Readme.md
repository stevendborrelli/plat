##About 

`plat` will attempt to determine the operating system and version. 

##Usage

```
./plat

NAME=ubuntu
VERSION_ID=12.04
PROCESSOR=x86_64

```

##Supported platforms
`plat` was tested on:

```
Centos  6.4
Debian  6.0
Fedora  19 
OSX     10.8
Redhat  6.3
```

##Other ways to get platform information:

###Python

```python -c 'import platform; print(platform.dist()[0:2])'```
