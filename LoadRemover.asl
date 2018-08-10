state("DyingLightGame")
{
	uint isLoading: "gamedll_x64_rwdi.dll" 0x1D47750, 0x240, 0x80, 0x310, 0x728, 0xAC;
}

isLoading
{
	if (return current.isLoading == 0) {
		return true;
	} else {
		return false;
	}
}
