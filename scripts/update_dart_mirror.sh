OLD_VERSION="/opt/DartDownload/VERSION"
NEW_VERSION="/opt/VERSION"
rm -f $NEW_VERSION
wget -nH --cut-dirs=2 http://gsdview.appspot.com/dart-editor-archive-integration/latest/VERSION -P /opt
diff -q $NEW_VERSION $OLD_VERSION
if [ $? -ne 0 ]; then
  echo 'find new version'
  sleep 300
  wget  -r -l1 --no-parent -w 1 --limit-rate=800k -nH --cut-dirs=2 --convert-links --backup-converted http://gsdview.appspot.com/dart-editor-archive-integration/latest/ -P /opt/DartDownload 
fi
