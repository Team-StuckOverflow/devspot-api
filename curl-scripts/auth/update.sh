#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-up"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "userInfo": {
      "lastName": "'"${LASTNAME}"'",
      "city": "'"${CITY}"'",
      "state": "'"${STATE}"'",
      "country": "'"${COUNTRY}"'",
      "languages": "'"${LANGUAGES}"'",
      "yearsOfExp": "'"${YEARS}"'",
      "role": "'"${ROLE}"'",
      "gitHub": "'"${GIT}"'",
      "linkedIn": "'"${LINKEDIN}"'",
      "proPic": "'"${IMAGE}"'"
    }
  }'

echo
