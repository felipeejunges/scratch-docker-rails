if [ $# -eq 0 ]; then
  echo "Usage: $0 <new_name>"
  exit 1
fi

new_name="$1"

sed -i "s/scratch/$new_name/g" ./docker-compose.yml
sed -i "s/scratch/$new_name/g" ./Dockerfile

echo "Files renamed from scratch to $new_name"