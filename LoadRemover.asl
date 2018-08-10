state("DyingLightGame")
{
	uint isLoading: "engine_x64_rwdi.dll" 0x0A2BE80, 0x50, 0xA8, 0x48, 0x3D0, 0x28;
}

isLoading
{
	return current.isLoading;
}
