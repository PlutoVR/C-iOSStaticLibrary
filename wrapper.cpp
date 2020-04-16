#include <stdio.h>
#include "junk.h"

extern "C" int getPetAge()
{
	Pet dog = Pet(21, "frank");
	return dog.getPetAge();
}
