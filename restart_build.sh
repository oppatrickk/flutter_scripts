# sh scripts/restart_build.sh
echo 'Restarting Build'

fvm flutter clean
fvm flutter pub get
dart run build_runner build --delete-conflicting-outputs

echo '✔ Reset Project and Build Runner Completed!'
# Notify when done
sh /c/Users/User/Documents/GitHub/scripts/notify.sh