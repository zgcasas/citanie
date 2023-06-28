RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

RESULT=$(bash curl.sh);

echo $RESULT

if [ -z "$RESULT" ]; then
  printf "${GREEN}HAY CITA! :)${NC}\n"
  exit
fi

printf "Failed: ${RED}NO HAY CITAS${NC}\n"
exit 1;
