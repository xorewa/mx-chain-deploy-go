package plugins

import (
	"encoding/json"
	"os"
	"path/filepath"
	"testing"

	mxCore "github.com/multiversx/mx-chain-core-go/core"
	chainConfig "github.com/multiversx/mx-chain-go/config"
	"github.com/multiversx/mx-chain-go/sharding"
	"github.com/stretchr/testify/require"
)

type capturingFileHandler struct {
	written interface{}
}

func (handler *capturingFileHandler) WriteObjectInFile(data interface{}) error {
	handler.written = data
	return nil
}

func (handler *capturingFileHandler) SaveSkToPemFile(_ string, _ []byte) error { return nil }
func (handler *capturingFileHandler) Close()                                   {}
func (handler *capturingFileHandler) IsInterfaceNil() bool                     { return handler == nil }

func TestWriteNodesSetupUsesCurrentR2DTO(t *testing.T) {
	t.Parallel()

	capture := &capturingFileHandler{}
	handler := &outputHandler{nodesSetupHandler: capture}
	input := []*sharding.InitialNode{
		{
			PubKey:        "validator-key",
			Address:       "owner-address",
			InitialRating: 5000001,
		},
	}

	err := handler.writeNodesSetup(input)
	require.NoError(t, err)

	written, ok := capture.written.(*chainConfig.NodesConfig)
	require.True(t, ok)
	require.Equal(t, int64(0), written.StartTime)
	require.Equal(t, []*chainConfig.InitialNodeConfig{
		{
			PubKey:        "validator-key",
			Address:       "owner-address",
			InitialRating: 5000001,
		},
	}, written.InitialNodes)

	encoded, err := json.Marshal(written)
	require.NoError(t, err)
	require.JSONEq(t, `{
		"startTime": 0,
		"initialNodes": [{
			"pubkey": "validator-key",
			"address": "owner-address",
			"initialRating": 5000001
		}]
	}`, string(encoded))
	require.NotContains(t, string(encoded), "roundDuration")
	require.NotContains(t, string(encoded), "consensusGroupSize")

	filePath := filepath.Join(t.TempDir(), "nodesSetup.json")
	require.NoError(t, os.WriteFile(filePath, encoded, 0o600))
	loaded := &chainConfig.NodesConfig{}
	require.NoError(t, mxCore.LoadJsonFile(loaded, filePath))
	require.Equal(t, written, loaded)
}

func TestWriteNodesSetupPreservesNilEntriesForLoaderValidation(t *testing.T) {
	t.Parallel()

	capture := &capturingFileHandler{}
	handler := &outputHandler{nodesSetupHandler: capture}

	err := handler.writeNodesSetup([]*sharding.InitialNode{nil})
	require.NoError(t, err)

	written, ok := capture.written.(*chainConfig.NodesConfig)
	require.True(t, ok)
	require.Equal(t, []*chainConfig.InitialNodeConfig{nil}, written.InitialNodes)
}
