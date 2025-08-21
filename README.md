# CandyEnterHook
```
What it Says - PiggyBacks off the Chat keybinds (Chatbox Texture Aura) 
This is a small addon to get a texture to load when opening and closing your chatbox, if you know code you can recode it to other functions that are keybound by "hardlocked" keybind keys
```
## **Trigger → Custom → Event**
## **Event(s):**

`CANDY_UI_SHOW, CANDY_UI_HIDE, PLAYER_ENTERING_WORLD`


## **Custom Trigger:**

```function(event)
  aura_env.visible = aura_env.visible or false

  if event == "CANDY_UI_SHOW" then
    aura_env.visible = true
    return true
  elseif event == "CANDY_UI_HIDE" then
    aura_env.visible = false
    return false
  elseif event == "PLAYER_ENTERING_WORLD" then
    return aura_env.visible  -- remember state across /reload if you want
  end
end
```


## **Custom Untrigger:**

`function() return not aura_env.visible end`


## **Load:**
make sure it’s Always (no boxes ticked).

### **Result**

Press Enter → chat opens + WA shows (one press).
Send message (Enter) or close chat (Esc/click) → chat closes + WA hides (zero extra presses).
