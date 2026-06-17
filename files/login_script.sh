#!/bin/bash
#section-start prevent interrupts
trap '' 1 2 3 15
#section-end
#section-start print message
echo "Connection Successful! This connection permits TCP forwarding only. No shell is available. Press ENTER to exit."
#section-end
#section-start exit
exit 1
#section-end
