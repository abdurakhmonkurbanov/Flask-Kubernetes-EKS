export URL=""
export TOKEN=`curl -d '{"email":"test@gmail.com","password":"password"}' -H "Content-Type: application/json" -X POST $URL/auth  | jq -r '.token'`
curl --request GET $URL:80/contents -H "Authorization: Bearer ${TOKEN}" | jq