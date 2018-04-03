#!/bin/bash

URL="http://www.espn.com/golf/leaderboard"

curl -Ss "$URL" | \
        pup '.leaderboard-table tbody tr.player-overview json{}' | \
        jq '[.[] | {
                player: .children[2].children[1].text,
                pos: .children[0].text,
                r1: .children[6].text,
                r2: .children[7].text,
                r3: .children[8].text,
                r4: .children[9].text,
                tot: .children[10].text,
                to_par: .children[3].text,
                today: .children[4].text,
                thru: .children[5].text,
#                 start: .children[1].text,
#                 ctry: .children[2].children[0].src
        }]'
