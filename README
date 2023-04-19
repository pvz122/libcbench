# libcbench

A tool to test your binary with every glibc version.

## Install

Firstly, clone the repository.

Next, get `glibc.tar.gz` from [release page](https://github.com/pvz122/libcbench/releases) or [compile it yourself](https://github.com/pvz122/libccompile). Put it into the repository directory.

Then make sure you have installed tar and patchelf:

```shell
sudo apt-get install tar patchelf
```

Finally, run:

```shell
sudo ./install.sh
```

## Usage

```shell
libcbench executable_path
```

will test your executable with all available glibc version.

```shell
libcset executable_path glibc_version
```

will set your executable with the certain glibc version.

```shell
libcset executable_path 0
```

will set your executable with the system glibc version.
