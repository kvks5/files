 #!/bin/bash

c=$(ps -e | grep -c waybar)

if [ $c -gt 0 ]
    then
        killall waybar
    else
         waybar
fi
