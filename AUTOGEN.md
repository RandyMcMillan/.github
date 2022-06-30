# autogen.sh
`autogen.sh` is a `POSIX` shell script to manage `GNU` `Autotools`(`autoconf` `automake`) and other softwares used by your project.

## how to get this sofware
```bash
cd /path/to/your autotools project
curl -LO https://raw.githubusercontent.com/leleliu008/autogen.sh/master/autogen.sh
chmod +x autogen.sh

# following instrutions is optional, and these instructions only worked in zsh
./autogen.sh integrate zsh
autoload -U compinit && compinit
```

## autogen.sh command usage
*   show help of this command

        ./autogen.sh -h
        ./autogen.sh --help

*   show version of this command

        ./autogen.sh -V
        ./autogen.sh --version

*   show current machine os and environment varables

        ./autogen.sh env

*   integrate `zsh-completion` script

        ./autogen.sh integrate zsh
        ./autogen.sh integrate zsh -x
        ./autogen.sh integrate zsh --china
        ./autogen.sh integrate zsh --china -x
        
    I have provide a zsh-completion script for `autogen.sh`. when you've typed `./autogen.sh` then type `TAB` key, it will auto complete the rest for you.

    **Note**: to apply this feature, you may need to run the command `autoload -U compinit && compinit`

*   upgrade this software

        ./autogen.sh upgrade
        ./autogen.sh upgrade -x
        ./autogen.sh upgrade --china
        ./autogen.sh upgrade --china -x


*   generate the configure shell script

        ./autogen.sh configure [ --rc-file=FILE | -x | -d ]

## autogen.rc
`autogen.rc` is also a `POSIX` shell script. It is a extension of `autogen.sh`. It will be automatically loaded if it exists. you can specify a different one via `--rc-file=FILE`.

a typical example of this file looks like as follows:

```bash
regist_dependency required exe cc:gcc:clang
regist_dependency required exe pkg-config   ge 0.18
regist_dependency required exe python3:python:python3.5:python3.6:python3.7:python3.8:python3.9 ge 3.5

gen_config_pre() {
    step "gen config pre"
    # do whatever you want."
}

gen_config() {
    step "gen config"
    run autoreconf -ivf
}

gen_config_post() {
    step "gen config post"
    # do whatever you want.
}
```

[ready-to-use axample](https://raw.githubusercontent.com/leleliu008/autogen.sh/master/autogen.rc)

### the function should be invoked on top of the `autogen.rc`
```
regist_dependency <required|optional> <exe|py|pm> NAME [OP VERSION]
```

### the function can be declared in `autogen.rc`
|function|overview|
|-|-|
|`gen_config_pre(){}`|run before `gen_config(){}`|
|`gen_config(){}`|run command `autoreconf -ivf`|
|`gen_config_post(){}`|run after `gen_config(){}`|

### the function can be invoked in `autogen.rc`
|function|example|
|-|-|
|`print`|`print 'your message.'`|
|`echo`|`echo 'your message.'`|
|`info`|`info 'your infomation.'`|
|`warn`|`warn "warnning message."`|
|`error`|`error 'error message.'`|
|`die`|`die "please specify a package name."`|
|`success`|`success "build success."`|
|`sed_in_place`|`sed_in_place '/AC_PROG_CC_C99/d' configure.ac`|

### the variable can be used in `autogen.rc`
|variable|overview|
|-|-|
|`NATIVE_OS_TYPE`|current machine os type.|
|`NATIVE_OS_NAME`|current machine os name.|
|`NATIVE_OS_VERS`|current machine os version.|
|`NATIVE_OS_ARCH`|current machine os arch.|
|`NATIVE_OS_LIBC`|current machine os libc.|
|||
|`PROJECT_DIR`|the project dir.|
|`PROJECT_NAME`|the project name.|
|`PROJECT_VERSION`|the project version.|
|||
|`AUTOCONF_VERSION_MREQUIRED`|min required version of autoconf.|
