if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <file_extension>"
	echon"Example: $0 .txt"
	exit 1
fi

extension="$1"

for file in *"$extension"
do
	if [ -f "$file" ]; then
		mv "$file" "backup_$file"
		echo "Renamed $file to backup_$file"
	fi
done

