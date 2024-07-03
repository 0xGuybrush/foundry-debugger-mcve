## Foundry #5435 MCVE

Minimal example to reproduce issue [#5435](https://github.com/foundry-rs/foundry/issues/5435) — i.e.

> Unknown contract at address `<contract-address>`

when running the Debugger.

## Steps to reproduce

1. Run Anvil:

```bash
anvil
```

2. Deploy Counter Script using the first local wallet

```bash
forge script CounterScript \
    --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 \
    --broadcast \
    --rpc-url http://localhost:8545 \
    -vvvv
```

This gives a contract address of `0x5FbDB2315678afecb367f032d93F642f64180aa3`.

3. Run the `DebugRemote.s.sol`:

```bash
ADDR=0x5FbDB2315678afecb367f032d93F642f64180aa3 \ 
forge debug \
    --debug script/DebugRemote.s.sol:DebugRemote \
    --fork-url http://127.0.0.1:8545
```




