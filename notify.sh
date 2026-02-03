# sh scripts/notify.sh
#!/bin/bash

# Notify that the build is done
if ! python -c "import playsound3" &> /dev/null; then
    echo "Installing playsound3..."
    pip install playsound3
fi

AUDIO_FILE="C:\\Users\\User\\Documents\\GitHub\\scripts\\jobs_done.wav"

if [ -f "/c/Users/User/Documents/GitHub/scripts/jobs_done.wav" ]; then
    python -c "from playsound3 import playsound; playsound(r'$AUDIO_FILE')"
else
    echo "Audio file not found"
fi
