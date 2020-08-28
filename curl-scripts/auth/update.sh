#!/bin/bash

API="http://localhost:4741"
URL_PATH="/user-info"

curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "userInfo": {
      "firstName": "'"${FIRSTNAME}"'",
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
