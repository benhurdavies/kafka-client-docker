# kafka-client-docker

This is project that dockerize kafka cli

## How to configure for your use case

```bash
cp users_jaas.conf.example users_jaas.conf
cp client_sasl.properties.example client_sasl.properties
```

[ Connecting aws MSK  ] Please configure `users_jaas.conf` and `client_sasl.properties` files with respect to your need. [More Info here](https://docs.aws.amazon.com/msk/latest/developerguide/msk-password.html#msk-password-users)

## How to run

```bash
docker-compose run kafka-client /bin/sh
```

## Example

```bash
docker-compose run kafka-client /bin/sh

./bin/kafka-topics.sh --bootstrap-server=hostServer --command-config  client_sasl.properties --list
```

## cheat sheet
* [https://towardsdev.com/apache-kafka-cli-commands-cheatsheet-584800de1477](https://towardsdev.com/apache-kafka-cli-commands-cheatsheet-584800de1477)
* [https://gist.github.com/sahilsk/d2a6ec384f5f2333e3fef40a581a97e1](https://gist.github.com/sahilsk/d2a6ec384f5f2333e3fef40a581a97e1)