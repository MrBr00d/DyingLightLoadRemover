state("DyingLightGame")
{
	uint Loading: 0x00C9CF8, 0x1B0, 0x748, 0x108, 0x3D0, 0x28;
}

isLoading
{
	return current.Loading == 1;
}
