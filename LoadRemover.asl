state("DyingLightGame")

{
	int Loading1: "rd3d11_x64_rwdi.dll", 0x7D108;
	int intro: "gamedll_x64_rwdi.dll", 0x1D552E0
//	int intro: "gamedll_x64_rwdi.dll", 0x1D512E0;
	
}

update
{
	vars.dostart = false;
	vars.isLoading = false;
	
	if (old.intro != current.intro && current.intro != 1)
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
