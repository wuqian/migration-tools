#!/bin/bash

repo forall -c 'RET=$(git --no-pager log --author=@jide  --pretty=format:"%ce commited on %cd%n" | wc -l);echo $REPO_PROJECT $REPO_PATH $RET' | awk  '{if($3!=0){print $0}}'
