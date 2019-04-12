#!/bin/bash

bin_dir="/home/sam/bin"

pup_path='.competitors tbody tr.Table2__tr json{}'

# Debugging
# "$bin_dir/pup" "$pup_path" | \
#     "$bin_dir/jq" '.[1:]' | "$bin_dir/jq" '.[0]'
# exit 0

# Ignore the first (empty) row
"$bin_dir/pup" "$pup_path" | \
    "$bin_dir/jq" '.[1:]' | \
    "$bin_dir/jq" '[.[] | {
        pos: .children[0].text,
        player: .children[2].children[1].text,
        country_flag_image: .children[2].children[0].src,
        link: .children[2].children[1].href,
        to_par: .children[3].text,
        today: .children[4].text,
        thru: .children[5].text,
        r1: .children[6].text,
        r2: .children[7].text,
        r3: .children[8].text,
        r4: .children[9].text,
        tot: .children[10].text,
    }]'
