state("DyingLightGame")

{
	int Loading1: "rd3d11_x64_rwdi.dll", 0x7D108;
}

update
{
	vars.isLoading = false;	
	
	if (current.Loading1 != 0)
	{
		vars.isLoading = true;
	}
}

isLoading

{
	return vars.isLoading;
}
