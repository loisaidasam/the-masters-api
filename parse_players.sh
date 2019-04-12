#!/bin/bash

pup_path='.competitors tbody tr.Table2__tr json{}'

# Ignore the first (empty) row
/home/sam/bin/pup "$pup_path" | \
    /home/sam/bin/jq '.[1:]' | \
    /home/sam/bin/jq '[.[] | {
        player: .children[2].children[1].text,
        pos: .children[0].text,
        r1: .children[5].text,
        r2: .children[6].text,
        r3: .children[7].text,
        r4: .children[8].text,
        tot: .children[9].text,
        to_par: .children[3].text,
        today: .children[3].text,
        thru: .children[4].text,
        link: .children[2].children[1].href,
        country_flag_image: .children[2].children[0].src
    }]'
