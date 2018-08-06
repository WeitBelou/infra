## Testapp
```bash
# Инстанс со стартап скриптом
gcloud compute instances create reddit-app \
 --boot-disk-size=10GB \
 --image-family ubuntu-1604-lts \
 --image-project=ubuntu-os-cloud \
 --machine-type=g1-small \
 --tags puma-server \
 --restart-on-failure \
 --metadata-from-file startup-script=startup.sh

# Правило брандмауэра
gcloud compute firewall-rules create default-pumaserver \
 --allow tcp:9292 \
 --target-tags=puma-server
```