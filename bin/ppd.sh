#!/bin/bash
tuned-adm profile $(tuned-adm list | awk -F '/' '{print $NF}' | sed -n "$(($(tuned-adm active | awk '{print $NF}' | sed 's/://') + 1))p;$(($(tuned-adm active | awk '{print $NF}' | sed 's/://') + 1 == $(tuned-adm list | wc -l) ? 1 : $(($(tuned-adm active | awk '{print $NF}' | sed 's/://') + 1))))p" | head -n 1)
