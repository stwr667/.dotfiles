# Increase the 2 kernel memory management values for postgres from very small, to ok values:

cd ~/code/mapping-widget
grunt build
cp build/agworld-map.js ../website/lib/assets/javascripts/map/agworld-map.js
echo "Build and copy complete"
