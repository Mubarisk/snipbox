# API List
# Auth
#token
curl -X 'POST' \
  'http://localhost:8000/auth/token/' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'X-CSRFTOKEN: U4NlLcEXGTbyFtIeLaMUuDV98kq1wA4o9hj00l5JqqVq5AUWg4eqVUrIqQ2Llvwi' \
  -d '{
  "username": "string",
  "password": "string"
}'

# refresh
curl -X 'POST' \
  'http://localhost:8000/auth/token/refresh/' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'X-CSRFTOKEN: U4NlLcEXGTbyFtIeLaMUuDV98kq1wA4o9hj00l5JqqVq5AUWg4eqVUrIqQ2Llvwi' \
  -d '{
  "refresh": "<refresh token>"
}'


# Main

# Get all snippets
curl -X 'GET' \
  'http://localhost:8000/api/snippets/' \
  -H 'accept: application/json' \
  -H 'Authorization: Bearer <access token>' 


# Create snippet
curl -X 'POST' \
  'http://localhost:8000/api/snippets/' \
  -H 'accept: application/json' \
  -H 'Authorization: Bearer  <access token>' \
  -H 'Content-Type: application/json' \
  -H 'X-CSRFTOKEN: U4NlLcEXGTbyFtIeLaMUuDV98kq1wA4o9hj00l5JqqVq5AUWg4eqVUrIqQ2Llvwi' \
  -d '{
  "title": "string",
  "note": "string",
  "tag": "string"
}'


# Get snippet by id
curl -X 'GET' \
  'http://localhost:8000/api/snippets/1/' \
  -H 'accept: application/json' \
  -H 'Authorization: Bearer <access token>'


# Update snippet
curl -X 'PUT' \
  'http://localhost:8000/api/snippets/1/' \
  -H 'accept: application/json' \
  -H 'Authorization: Bearer <access token>' \
  -H 'Content-Type: application/json' \
  -H 'X-CSRFTOKEN: U4NlLcEXGTbyFtIeLaMUuDV98kq1wA4o9hj00l5JqqVq5AUWg4eqVUrIqQ2Llvwi' \
  -d '{
  "title": "string",
  "note": "string",
  "tag": "string"
}'


# Delete snippet
curl -X 'DELETE' \
  'http://localhost:8000/api/snippets/2/' \
  -H 'accept: */*' \
  -H 'Authorization: Bearer <access token>' \
  -H 'X-CSRFTOKEN: U4NlLcEXGTbyFtIeLaMUuDV98kq1wA4o9hj00l5JqqVq5AUWg4eqVUrIqQ2Llvwi'


# Snippet Overview
curl -X 'DELETE' \
  'http://localhost:8000/api/snippets/2/' \
  -H 'accept: */*' \
  -H 'Authorization: Bearer <access token>' \
  -H 'X-CSRFTOKEN: U4NlLcEXGTbyFtIeLaMUuDV98kq1wA4o9hj00l5JqqVq5AUWg4eqVUrIqQ2Llvwi'



# Get all tags
curl -X 'GET' \
  'http://localhost:8000/api/tags/' \
  -H 'accept: application/json' \
  -H 'Authorization: Bearer <access token>'


# Get tag by id
curl -X 'GET' \
  'http://localhost:8000/api/tags/1/' \
  -H 'accept: application/json' \
  -H 'Authorization: Bearer<access token>'