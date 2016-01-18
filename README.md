# puppet-subversion_config
[![Build Status](https://travis-ci.org/Adaptavist/puppet-subversion_config.svg?branch=master)](https://travis-ci.org/Adaptavist/puppet-subversion_config)

A puppet module for managing and configuring subversion module and creating custom repos

## Usage

Installation, make sure subversion is running and will create custom repos:

```

 subversion_config::create_repos:
  'repo1':
    path: '/tmp/repo1'
    owner: 'hosting'
    group: 'hosting'

```

## Dependencies

puppet-subversion

