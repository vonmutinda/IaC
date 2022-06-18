NETWORK_STACK = udagram-network
NETWORK_FILE = network.yml
NETWOK_PARAMS = network_params.json

SERVER_STACK = udagram-servers
SERVER_FILE = servers.yml
SERVER_PARAMS = server_params.yml

create-network:
	aws cloudformation create-stack --stack-name ${NETWORK_STACK} --template-body file://${NETWORK_FILE}  --parameters file://${NETWOK_PARAMS} --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

update-network:
	aws cloudformation update-stack --stack-name ${NETWORK_STACK} --template-body file://${NETWORK_FILE}   --parameters file://${NETWOK_PARAMS} --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

delete-network:
	aws cloudformation delete-stack --stack-name ${NETWORK_STACK}

create-servers:
	aws cloudformation create-stack --stack-name ${SERVER_STACK} --template-body file://${SERVER_FILE}  --parameters file://${SERVER_PARAMS} --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

update-servers:
	aws cloudformation update-stack --stack-name ${SERVER_STACK} --template-body file://${SERVER_FILE}  --parameters file://${SERVER_PARAMS} --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

delete-servers:
	aws cloudformation delete-stack --stack-name ${SERVER_STACK}
