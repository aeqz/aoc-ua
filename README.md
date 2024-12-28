# Advent of Code with Uiua

Some Advent of Code solutions implemented with [Uiua](https://www.uiua.org/).

> [!IMPORTANT]  
> Uiua is not yet stable. This code is compatible with version `0.14.1`.
> It also makes use of the following external commands that are not available in Uiua:
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
uiua run --no-color [year].ua > [year].out
```
