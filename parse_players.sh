#!/bin/bash

bin_dir="/$HOME/bin"

pup_path='.competitors tbody tr json{}'

# Debugging
# "$bin_dir/pup" "$pup_path" | \
#     "$bin_dir/jq" '.[1:]' | "$bin_dir/jq" '.[0]'
# exit 0

"$bin_dir/pup" "$pup_path" | \
    "$bin_dir/jq" '[.[] | {
        pos: .children[0].text,
        player: .children[1].children[1].text,
        country_flag_image: .children[1].children[0].src,
        link: .children[1].children[1].href,
        to_par: .children[2].text,
        today: .children[3].text,
        thru: .children[4].text,
        r1: .children[5].text,
        r2: .children[6].text,
        r3: .children[7].text,
        r4: .children[8].text,
        tot: .children[9].text,
    }]'
