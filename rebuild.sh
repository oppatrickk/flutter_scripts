# sh scripts/rebuild.sh
echo 'Running rebuild.sh'

fvm install 3.24.0
fvm use 3.24.0
fvm global 3.24.0

fvm flutter pub get
fvm pub run build_runner build --delete-conflicting-outputs

# fvm flutter format lib/ test/ plugins/**/lib/ --line-length=150

echo '✔ Project Setup Complete!'
# Notify when done
sh scripts/notify.sh