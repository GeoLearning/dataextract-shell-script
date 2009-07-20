# Requests a class list based on dates specified as args
curl -u lmsusername:S3cr3t! -d "header_required=1&fromdate=$1&todate=$2" --dump-header /dev/stdout --output /dev/null --silent https://services.geolearning.com/dataextraction/your-domain/classes | awk '/Location/ { print "--url", $2 }' | curl -u lmsusername:S3cr3t! --config - > ~/class-list.csv
