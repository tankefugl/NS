#ifndef CHAT_PANEL_H
#define CHAT_PANEL_H

#include <VGUI.h>
#include <VGUI_KeyCode.h>
#include <VGUI_Panel.h>
#include "vgui_defaultinputsignal.h"

#include "AvHFont.h"
//@2014 added keycode
#include <string>
//@2014 

//#define VK_ESCAPE	0x1B
//#define VK_RETURN	0x0D 
//#define VK_CAPITAL	0x14
//#define VK_LCONTROL	0xA2
//#define VK_RCONTROL	0xA3


class ChatPanel : public vgui::Panel, public vgui::CDefaultInputSignal
{
public:
    ChatPanel(int x, int y, int wide, int tall);

    void CancelChat();
    void SetChatMode(std::string sChatMode);

    void KeyDown(int virtualKey, int scanCode);

    // Checks if a key was pushed since the chat window was opened.
    bool WasKeyPushed(int virtualKey) const;

    virtual void paint();
	virtual void paintBackground();

	const static char* chatModeAll;
	const static char* chatModeTeam;

private:
    std::string mText;
    std::string mChatMode;

    bool        mKeyPushed[256];

};

#endif
