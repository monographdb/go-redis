# Instructions for Modifying the go-redis Repository and Running Tests

## Modify related files in the go-redis Repository to Accommodate Eloqkv
1. Check out `test_eloqkv_zx` branch.
2. Install ginkgo package to run the test:
    ```sh
    go get github.com/onsi/ginkgo/v2/ginkgo
    go install github.com/onsi/ginkgo/v2/ginkgo
    echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.zshrc
    source ~/.zshrc
    ```

## Modify Test Cases in *_test.go Files
- The tests are under `Describe` function, change it into `FDescribe` to run only the focused tests

## Steps to Run Tests

### 1. Start Redis Server
- Start the Redis server using `eloqkv`:

    ```sh
    path/to/eloqkv --config=path/to/config_file
    ```

### 2. Run Specific Tests
- Use Maven to run specific test cases:

    ```sh
    # run all the focused tests(FDescribe) in go-redis
    ginkgo --keep-going --label-filter='!hash-expiration'
    ```


