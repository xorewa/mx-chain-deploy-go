module github.com/multiversx/mx-chain-deploy-go

go 1.26.2

require (
	github.com/multiversx/mx-chain-core-go v1.5.1-0.20260618130450-9b7f1defd425
	github.com/multiversx/mx-chain-crypto-go v1.3.1
	github.com/multiversx/mx-chain-go v1.7.13-patch2
	github.com/multiversx/mx-chain-logger-go v1.1.0
	github.com/multiversx/mx-chain-vm-common-go v1.6.7
	github.com/stretchr/testify v1.11.1
	github.com/urfave/cli v1.22.17
)

require (
	github.com/beevik/ntp v1.3.0 // indirect
	github.com/btcsuite/btcd/btcutil v1.1.3 // indirect
	github.com/bytedance/sonic v1.11.6 // indirect
	github.com/bytedance/sonic/loader v0.1.1 // indirect
	github.com/cloudwego/base64x v0.1.4 // indirect
	github.com/cloudwego/iasm v0.2.0 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.7 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/denisbrodbeck/machineid v1.0.1 // indirect
	github.com/gabriel-vasile/mimetype v1.4.13 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/gin-gonic/gin v1.10.0 // indirect
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-playground/validator/v10 v10.20.0 // indirect
	github.com/goccy/go-json v0.10.2 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/golang/snappy v0.0.5-0.20231225225746-43d5d4cd4e0e // indirect
	github.com/hashicorp/golang-lru v1.0.2 // indirect
	github.com/herumi/bls-go-binary v1.28.2 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/cpuid/v2 v2.3.0 // indirect
	github.com/leodido/go-urn v1.4.0 // indirect
	github.com/mattn/go-isatty v0.0.22 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/mr-tron/base58 v1.3.0 // indirect
	github.com/multiversx/concurrent-map v0.1.4 // indirect
	github.com/multiversx/mx-chain-communication-go v1.3.3-0.20260608072730-982186a1ad78 // indirect
	github.com/multiversx/mx-chain-storage-go v1.1.2-0.20260608080818-1fde35395146 // indirect
	github.com/pelletier/go-toml v1.9.3 // indirect
	github.com/pelletier/go-toml/v2 v2.2.2 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/shirou/gopsutil v3.21.11+incompatible // indirect
	github.com/syndtr/goleveldb v1.0.1-0.20220721030215-126854af5e6d // indirect
	github.com/tklauser/go-sysconf v0.3.4 // indirect
	github.com/tklauser/numcpus v0.2.1 // indirect
	github.com/twitchyliquid64/golang-asm v0.15.1 // indirect
	github.com/ugorji/go/codec v1.2.12 // indirect
	github.com/yusufpapurcu/wmi v1.2.2 // indirect
	golang.org/x/arch v0.8.0 // indirect
	golang.org/x/crypto v0.53.0 // indirect
	golang.org/x/exp v0.0.0-20260603202125-055de637280b // indirect
	golang.org/x/net v0.55.0 // indirect
	golang.org/x/sync v0.21.0 // indirect
	golang.org/x/sys v0.46.0 // indirect
	golang.org/x/text v0.38.0 // indirect
	google.golang.org/protobuf v1.36.11 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/multiversx/mx-chain-core-go => github.com/xorewa/mx-chain-core-go v0.0.0-20260731080906-2ae724dbfeb1

replace github.com/multiversx/mx-chain-crypto-go => github.com/xorewa/mx-chain-crypto-go v0.0.0-20260801082855-aa434576d3a5

replace github.com/multiversx/mx-chain-go => github.com/xorewa/mx-chain-go v0.0.0-20260804115311-09d256531d6d

replace github.com/multiversx/mx-chain-logger-go => github.com/xorewa/mx-chain-logger-go v0.0.0-20260801081807-1372e2ba679d

replace github.com/multiversx/mx-chain-storage-go => github.com/xorewa/mx-chain-storage-go v0.0.0-20260801083748-7b50e0213c4d

replace github.com/multiversx/mx-chain-vm-common-go => github.com/xorewa/mx-chain-vm-common-go v0.0.0-20260801091718-772b8d777a0c

replace github.com/multiversx/mx-chain-scenario-go => github.com/xorewa/mx-chain-scenario-go v0.0.0-20260801095210-b1a5df7767c7

replace github.com/multiversx/mx-chain-communication-go => github.com/xorewa/mx-chain-communication-go v0.0.0-20260801092431-483cc64b4e4b

replace github.com/multiversx/mx-chain-vm-go => github.com/xorewa/mx-chain-vm-go v0.0.0-20260804115208-d94f6cfaebc8

replace github.com/multiversx/mx-chain-es-indexer-go => github.com/xorewa/mx-chain-es-indexer-go v0.0.0-20260804110617-40a39e2ab1dc

replace github.com/multiversx/mx-chain-vm-v1_2-go => github.com/xorewa/mx-chain-vm-v1_2-go v0.0.0-20260801124047-81895e71953d

replace github.com/multiversx/mx-chain-vm-v1_3-go => github.com/xorewa/mx-chain-vm-v1_3-go v0.0.0-20260801130252-cb991e9563dd

replace github.com/multiversx/mx-chain-vm-v1_4-go => github.com/xorewa/mx-chain-vm-v1_4-go v0.0.0-20260802050444-2001a4eac70e

replace github.com/multiversx/mx-components-big-int => github.com/xorewa/mx-components-big-int v0.0.0-20260731113157-08b2f51f7fc1

replace github.com/herumi/bls-go-binary => github.com/xorewa/bls-go-binary v0.0.0-20260731163832-566eb78d4b77

replace github.com/multiversx/mx-chain-proxy-go => github.com/xorewa/mx-chain-proxy-go v0.0.0-20260804115208-257877400603
