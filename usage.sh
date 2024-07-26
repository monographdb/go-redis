cd /home/mono/workspace/redis_client/go-redis
export REDIS_PORT=6379
# go test ./...
go get github.com/onsi/ginkgo/v2/ginkgo
go install github.com/onsi/ginkgo/v2/ginkgo
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.zshrc
source ~/.zshrc

# add focused test (FDescribe)

# start eloqkv

# cls && ginkgo --keep-going --focus-file="./commands_test.go" --skip-file="./example_test.go" --label-filter='!hash-expiration'
cls && ginkgo --keep-going --label-filter='!hash-expiration' > /home/mono/workspace/redis_client/go-redis/zx.log 2>&1

