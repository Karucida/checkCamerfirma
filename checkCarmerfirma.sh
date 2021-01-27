filename='checkCamerfirma.txt'

RED='\033[0;31m'
NC='\033[0m' # No Color
echo "Start Script"
while read site; do
#site=www.agenciatributaria.gob.es
echo "Checking $site"
openssl_response=$(openssl s_client -connect $site:443 -showcerts -servername $site < /dev/null 2>&1)

if echo "$openssl_response" | grep -q "CAMERFIRMA" ; then
    echo "${RED}found in $site${NC}"
fi

done < $filename

echo "End Script"
