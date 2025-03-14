## Oceano Sal Token

ERC20 Token

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/DeploySalToken.s.sol:DeploySalToken --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Upgrade

```shell
$ forge script script/DeployNewImp.s.sol:DeployNewImp --rpc-url <your_rpc_url> --private-key <your_private_key>
$ forge script script/UpgradeSalToken.s.sol:UpgradeSalToken --rpc-url <your_rpc_url> --private-key <your_private_key>

```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
