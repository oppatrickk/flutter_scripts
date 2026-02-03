# sh start_build.sh

echo 'Running Build Runner...'
dart run build_runner build --delete-conflicting-outputs

echo '✔ Build Runner Completed!'
# Notify when done
sh /c/Users/User/Documents/GitHub/scripts/notify.sh