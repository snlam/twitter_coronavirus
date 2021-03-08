#!/bin/bash

hashtags='#코로나바이러스 #コロナウイルス #冠状病毒 #covid2019 #covid-2019 #covid19 #covid-19 #coronavirus #corona #virus #flu #sick #cough #sneeze #hospital #nurse #doctor'
for hashtag in $hashtags; do
        nohup ./src/visualize.py --input_path=reduced.lang --key=$hashtag | head > viz/$hashtag.lang &
	nohup ./src/visualize.py --input_path=reduced.country --key=$hashtag | head > viz/$hashtag.country &
done

