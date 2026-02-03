# sh scripts/check_dependency.sh
fvm flutter pub get
fvm flutter pub run dependency_validator

echo '✔ Dependecies Checked!'
# Notify when done
sh scripts/notify.sh