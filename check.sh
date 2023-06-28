RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

for COMMAND in "${COMMANDS[@]}"
do
  RESULT=$(bash curl.sh);

  if [ -z "$RESULT" ]; then
   printf "Failed: ${RED}NO HAY CITAS${NC}\n"
   exit 1;
  fi
done

printf "${GREEN}HAY CITA! :)${NC}\n"
