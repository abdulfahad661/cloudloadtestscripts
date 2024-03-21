secrets=$(aws secretsmanager get-secret-value --secret-id 'rds!db-f1c84257-08bc-4f4d-b0a2-c88957f07fb0' --query SecretString --output text)

username=$(echo $secrets | jq -r '.username')
password=$(echo $secrets | jq -r '.password')

mysql -h YourRDSEndpoint -u $username -p$password -P 3306

#Usage Guide
#https://www.youtube.com/watch?v=1wjrZpM7YDE
