#!/bin/bash
python /opt/RBPicsDB/src/pyUpdatePicture/pyUpdatePicture.py -f /opt/RBPicsDB/RBPicsDB.cfg -d /daten/media/bilder/500px --linkto /home/pi/Bild/Bild.jpg
while true; do inotifywait -e close /home/pi/Bild/Bild.jpg && python /opt/RBPicsDB/src/pyUpdatePicture/pyUpdatePicture.py -f /opt/RBPicsDB/RBPicsDB.cfg -d /daten/media/bilder/500px --linkto /home/pi/Bild/Bild.jpg; done
