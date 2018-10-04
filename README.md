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

## ~Rant~ Note:

This should be as simple as running:
```
$ inspec exec <path_to_test> -t docker://<container_ID>
```

Example:
```
root@test:~/kitchen-docker-nginx# inspec exec test/integration/default/nginx.rb -t docker://f6aff65f02dd

Profile: tests from test/integration/default/nginx.rb (tests from test.integration.default.nginx.rb)
Version: (not specified)
Target:  docker://f6aff65f02dd093ae8d6a4cff6bb143e1c29c68ba2fa731f9cdf4d95bac25359

  ✔  check_nginx: System Package nginx
     ✔  System Package nginx should be installed


Profile Summary: 1 successful control, 0 control failures, 0 controls skipped
Test Summary: 1 successful, 0 failures, 0 skipped
```

This would not install anything to the container and is pretty straight forward.
Unfortunately test-kitchen does not seem to support it and is doing some voodoo magic instead.
