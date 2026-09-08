package core

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/require"
)

func TestNewFileHandlerCreatesPrivateOutput(t *testing.T) {
	t.Parallel()

	outputDirectory := t.TempDir()
	fileName := "validatorKey.pem"
	filePath := filepath.Join(outputDirectory, fileName)
	require.NoError(t, os.WriteFile(filePath, []byte("stale"), 0o644))

	handler, err := NewFileHandler(outputDirectory, fileName)
	require.NoError(t, err)
	t.Cleanup(handler.Close)

	info, err := os.Stat(filePath)
	require.NoError(t, err)
	require.Equal(t, os.FileMode(0o600), info.Mode().Perm())
}
