# Gmail -  Getting authentication failure when using Mozilla Thunderbird.

Problem: "Thunderbird: Authentication failure while connecting to server imap.gmail.com"

1. Set thunderbird in safe mode
https://support.mozilla.org/en-US/kb/safe-mode-thunderbird

2.Find and open config editor in TB (equivalent of FF about:config)
https://support.mozilla.org/en-US/kb/config-editor

3. Add the correspond boolean value in config editor and set it to true
general.useragent.compatMode.firefox

click ok

4. Restart your tb client

5. Once again credential window will be present to you login as usual.

6.Everything will work fine from now on.
7.Turn off safe mode and restart TB

<Source: [https://support.google.com/mail/thread/4528103?hl=en>
