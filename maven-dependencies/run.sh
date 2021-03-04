export MS_ID=${MI_DEV_MICROSERVICE_ID:-123} 
export HOST=${MI_DEV_HOST:-app.leanix.net}
export TOKEN=${MI_DEV_TOKEN:-<Your API Token>}

echo $HOST
echo $TOKEN
echo $MS_ID

export URL="https://$HOST/services/cicd-connector/v1/dependencies"

echo $URL

curl -X POST \
    "$URL?source=mvn&externalId=$MS_ID"\
    -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
    -F 'api_token='$TOKEN \
    -F 'host=app.leanix.net' \
    -F 'file=@maven-dependencies.xml'
