# Advent of Code with Uiua

Some Advent of Code solutions implemented with [Uiua](https://www.uiua.org/).

> [!IMPORTANT]  
> Uiua is not yet stable. This code is compatible with version `0.12.3`.
> It also makes use of some external commands that are not yet available in Uiua:
>   * `mkdir` (will be [added](https://www.uiua.org/docs/&fmd) on `0.13.0`)
>   * `md5`

## Download your input files

Requires having a `.session` file in the current directory with your Advent of Code session cookie value:

```sh
./scripts/inputs.ua [year]
```

## Run solutions

```sh
# To interactively see outputs after saving a file while solving puzzles
uiua watch

# To record outputs for a year
uiua run [year].ua > [year].out
```
