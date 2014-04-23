####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with duplicity](#setup)
    * [What duplicity affects](#what-duplicity-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with duplicity](#beginning-with-duplicity)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

Install duplicity for a simple backup solution

##Module Description

For now just install Duplicity, soon will also allow one to configure a Cron job and (possible) manage SSH keys too.

##Setup

###What duplicity affects

* Installs the package for Duplicity

###Setup Requirements **OPTIONAL**

Tested on CentOS 6, should work on RHEL5+ and similar

In theory also works on Debian/Ubuntu

###Beginning with duplicity

```
class { 'duplicity': }
```

##Usage

TBD

##Reference

TBD

##Limitations

Many for now (very early days)

##Development

Fork and send me a pull request

