state("DyingLightGame")

{
	int Loading1: "rd3d11_x64_rwdi.dll", 0x7D108;
	int intro: "engine_x64_rwdi.dll", 0x0A2EB70, 0x798;
//	int intro: "engine_x64_rwdi.dll", 0x0A2BC00, 0x7F0; use this when the one above here breaks.
	
}

update
{
	vars.dostart = false;
	vars.isLoading = false;
	
	if (old.intro == 291 && current.intro == 259)
	{
		vars.dostart = true;
	}
	
	
	if (current.Loading1 != 0)
	{
		vars.isLoading = true;
	}
}

start
{
	return vars.dostart;
}


isLoading

{
	return vars.isLoading;
}
