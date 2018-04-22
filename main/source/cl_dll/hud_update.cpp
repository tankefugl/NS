/***
*
*	Copyright (c) 1999, Valve LLC. All rights reserved.
*	
*	This product contains software technology licensed from Id 
*	Software, Inc. ("Id Technology").  Id Technology (c) 1996 Id Software, Inc. 
*	All Rights Reserved.
*
*   Use, distribution, and modification of this source code and/or resulting
*   object code is restricted to non-commercial enhancements to products from
*   Valve LLC.  All other use, distribution, or modification is prohibited
*   without written permission from Valve LLC.
*
****/
//
//  hud_update.cpp
//

#include <math.h>
#include "hud.h"
#include "cl_util.h"
#include <stdlib.h>
#include <memory.h>

int CL_ButtonBits( int );
void CL_ResetButtonBits( int bits );

extern float v_idlescale;
float in_fov;
extern void HUD_SetCmdBits( int bits );

int CHud::UpdateClientData(client_data_t *cdata, float time)
{
	memcpy(m_vecOrigin, cdata->origin, sizeof(vec3_t));
	memcpy(m_vecAngles, cdata->viewangles, sizeof(vec3_t));
	
	m_iKeyBits = CL_ButtonBits( 0 );
	m_iWeaponBits = cdata->iWeaponBits;

	in_fov = cdata->fov;

	Think();

	//cdata->fov = m_iFOV;

	float width = ScreenWidth();
	float height = ScreenHeight();

	//horizontal+ widescreen view correction - engine uses vertical-
	//starts with hacked in commander view fix where commander fov was changed to 106 so the black background beind the map is fully rendered - remove that section and change comm fov back to 90 if fixed
	if (gHUD.GetIsInTopDownMode())
	{
		float commFOV;

		commFOV = atanf(tan(m_iFOV * M_PI / 360) * 0.5625 * width / height) * 360 / M_PI;

		//clamp
		if (commFOV > 107)
		{
			commFOV = 106;
		}
		else if (commFOV < 90)
		{
			commFOV = 90;
		}

		cdata->fov = commFOV;
	}
	else
	{
		float newFOV;

		newFOV = atanf(tan(m_iFOV * M_PI / 360) * 0.75 * width / height) * 360 / M_PI;

		//clamp for game balance
		if (m_iFOV == 105 && newFOV > 121)
		{
			newFOV = 120;
		}
		else if (m_iFOV == 100 && newFOV > 117)
		{
			newFOV = 116;
		}
		else if (m_iFOV == 90 && newFOV > 107)
		{
			newFOV = 106;
		}
		else if (newFOV < 90)
		{
			newFOV = 90;
		}

		cdata->fov = newFOV;
	}
	
	CL_ResetButtonBits( m_iKeyBits );

	// return 1 if in anything in the client_data struct has been changed, 0 otherwise
	return 1;
}


