# The Masters

A command line API for getting leaderboard data about the PGA Masters Tournament.

Based on [http://www.espn.com/golf/leaderboard](http://www.espn.com/golf/leaderboard)

Originally just this gist: [https://gist.github.com/loisaidasam/814af69f97b1cf3a7edf](https://gist.github.com/loisaidasam/814af69f97b1cf3a7edf)

## Update:

2019 is in the books, congrats Tiger!

## Usage:

```shell
./update.sh
```

The actual data parsing happens in `parse_players.sh`

## Requirements:

- [curl](http://curl.haxx.se/)
- [pup](https://github.com/EricChiang/pup)
- [jq](http://stedolan.github.io/jq/)

## Web API

[http://samsandberg.com/themasters/](http://samsandberg.com/themasters/)
