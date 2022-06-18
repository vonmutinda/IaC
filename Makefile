
NETWORK_STACK = udagram-network
SERVER_STACK = udagram-servers

create-network:
	aws cloudformation create-stack --stack-name ${NETWORK_STACK} --template-body file://$(file)  --parameters file://$(params) --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

update-network:
	aws cloudformation update-stack --stack-name ${NETWORK_STACK} --template-body file://$(file)  --parameters file://$(params) --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

delete-network:
	aws cloudformation delete-stack --stack-name ${NETWORK_STACK}

create-servers:
	aws cloudformation create-stack --stack-name ${SERVER_STACK} --template-body file://$(file)  --parameters file://$(params) --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

update-servers:
	aws cloudformation update-stack --stack-name ${SERVER_STACK} --template-body file://$(file)  --parameters file://$(params) --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

delete-servers:
	aws cloudformation delete-stack --stack-name ${SERVER_STACK}

