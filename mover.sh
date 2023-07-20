if [ $# -eq 0 ]; then
  echo "Usage: $0 <folder_name>"
  exit 1
fi

folder_name="$1"

mv -i "./$folder_name/docker-compose.yml" ./
mv -i "./$folder_name/Dockerfile" ./

echo "Files from folder $folder_name moved to root"