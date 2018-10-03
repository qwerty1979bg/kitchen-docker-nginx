# Kitchen-docker test to check if our docker image has nginx installed

This repository contains a kitchen-docker test to check if [our docker image](https://github.com/qwerty1979bg/packer-docker-nginx) has nginx installed

## Usage

1. (in this particular case) Use Ubuntu 16 or 18
2. Install the dependency hell:
```
$ apt-get update
$ apt-get install -y less gcc ruby ruby-dev make ruby-bundler g++ docker.io git
```
3. Clone this repository and `cd` into it.

4. Run the following:

```
$ bundle install
$ bundle exec kitchen test
```

## Note:

This should be as simple as running:
```
$ inspec exec <name of test> -t docker://<container ID>
```

This would not install anything to the container and is pretty straight forward.
Unfortunately test-kitchen does not seem to support it and is doing some voodoo magic instead.
