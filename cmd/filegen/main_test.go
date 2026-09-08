package main

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestComputeValidatorPopulationUsesRequestedMetachainPopulation(t *testing.T) {
	t.Parallel()

	perShard, metachain, total := computeValidatorPopulation(3, 3, 3, 0)

	require.Equal(t, 3, perShard)
	require.Equal(t, 3, metachain)
	require.Equal(t, 12, total)
}

func TestComputeValidatorPopulationAppliesHysteresisToBothPopulations(t *testing.T) {
	t.Parallel()

	perShard, metachain, total := computeValidatorPopulation(2, 5, 7, 0.2)

	require.Equal(t, 6, perShard)
	require.Equal(t, 9, metachain)
	require.Equal(t, 21, total)
}
