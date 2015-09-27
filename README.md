XDCC Bot Stats Script aims to:

* Collect stats associated with one or more bots provided via the CTCP status command.
* Host privileged triggers to report stats to the channel: !xdccstats, !xdccstatstotal
* Provide functions to embed stats in normal triggers such as !xdcc, or anything you can think of, such as your own scripts.
* Allow for convenient DCC admin chats with bots.

Last updated on 27.09.15 for v1.2.


Installation
============

To load the script into KVIrc (which then persists until you uninstall) and run its startup alias, in a KVIrc console window:

    /parse <path to script file, speechmark-delimited if the path contains spaces>
    /XDCCBotStatsScript::Startup

Once the script is installed, XDCCBotStatsScript::Startup is automatically called when KVIrc is started.


Dependencies
============

This script depends on the Common Scripting Services script, see the [Github repo](https://github.com/OmegaPhil/kvirc-common-scripting-services).


Uninstallation
==============

In a KVIrc console window:

    /XDCCBotStatsScript::uninstall::uninstall


General Configuration
=====================

The 'Scripts' menu is created on the main KVIrc menubar, which then hosts the XDCC Bot Stats Script menu. Here you can turn the script on/off, list, remove  and reenable registered XDCC bots, and configure DCC admin chat settings:

![Script configuration](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/blob/master/doc/script_configuration.png?raw=true)


XDCC Bot Registration
=====================

**Please get permission from the XDCC botmaster before you register a bot** - this script sends CTCP status commands every 30 seconds, allowing it to maintain pseudo-realtime stats from publically-available information without a permanent DCC admin chat session.

Right-click the relevant bot in the nicklist, and go XDCC Bot Stats Script -> Register <nick>:

![Register a bot](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/blob/master/doc/register_bot.png?raw=true)

After registration you can define the bot's maximum upload speed (e.g. 12800KB/Sec for a 100Mbit bot, **must be configured for normal triggers to work**), and optionally the bot's DCC admin chat password, which is used for automatic authentication when a DCC admin chat is initiated:

![Configured bot](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/blob/master/doc/registered_bot_configured.png?raw=true)

Once a bot is registered, CTCP status commands will be sent as mentioned above. If the bot isn't on the server when the request is made, the next request is made in a minute, and on subsequent failures an extra minute is added to the delay up until the limit of 10 minutes between the requests.

If a bot hasn't been seen for 2 days (that is, two days from the first CTCP status message KVIrc sent since it started up), it is disabled - this script will no longer try to contact the bot.

Disabled bots have ' (Disabled)' added in their output (see 'List registered XDCC bots') - you can remove them via the 'Remove registered XDCC bot...' dialog:

![Remove registered XDCC bot](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/blob/master/doc/remove_registered_bot.png?raw=true)

To reenable a disabled bot, see the 'Reenable disabled XDCC bot...' dialog:

![Reenable disabled XDCC bot](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/blob/master/doc/reenable_disabled_xdcc_bot.png?raw=true)


Channel Triggers
================

By default, triggers (!xdccstats and !xdccstatstotal) are not enabled on a channel. Right-click the channel -> XDCC Bot Stats Script -> Enable XDCC Stats triggers:

![Enable channel triggers](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/blob/master/doc/channel_triggers_enable.png?raw=true)

**After enabling triggers, make sure to disable triggers for below-hops users as appropriate for your channel**  - these triggers are intended for privileged users and are a spam risk:

![Disable triggers for below hops](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/blob/master/doc/channel_triggers_disable_below_hops.png?raw=true)

All triggers can be generated from the GUI, or entered manually as usual.

!xdccstats works out the registered bots on the channel, then sends a stats line for each, including a final total stats line:

![!xdccstats in channel](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/blob/master/doc/channel_triggers_xdccstats.png?raw=true)

!xdccstatstotal only outputs the totals line (along with the advert).

In case you have a channel with many bots registered with this script, you may want to only report on a few of them - both triggers support one or more wildcard patterns, e.g. on a channel with the following registered bots idling:

Arutha  
Hatsu|Arutha  
Kaio-Ken  
Kuruma|Arutha

    !xdccstats Arutha

will just report on Arutha,

    !xdccstats *Arutha

will report on all bots including 'Arutha' in their nick in this example.

You can pass multiple patterns separated by spaces to report on more than one specific bot or a more complicated set of them:

    !xdccstats Arutha Kuruma|Arutha

and so on. Wildcard characters are * (any character(s)) and ? (any single character) as usual.


Including Stats In A Normal !xdcc Trigger
=========================================

The following is example !xdcc code, from an OnChannelMessage event handler that is not part of the XDCC Bot Stats Script (functionality this script provides is intended to be integrated into your normal channel scripts):

    if ($3 == "!xdcc")
    {
        notice -q $0 "Official XDCC bots:"
        notice -q $0 $k(0,0).
        notice -q $0 "ExampleXDCCBot (1Gbit shared, "$k(4)"MINSPEED 10KB/Sec"$k", OVH, FR, courtesy of botmaster): http://this.is.a.packlist/packlist.txt"
        if ($aliasBody("XDCCBotStatsScript::GetDynamicXDCCBotStats") != "" && $XDCCBotStatsScript::CanGetBotData($context.networkName, "ExampleXDCCBot") == $true) notice -q $0 $XDCCBotStatsScript::GetDynamicXDCCBotStats($context.networkName, "ExampleXDCCBot")
        notice -q $0 $k(0,0).
        notice -q $0 $k(4)"Note with 4GB+ files, you will need mIRC 6.33 or above (GNU/Linux: irssi (commandline), Xchat (GUI) work) to download correctly."
        notice -q $0 "== If packlists are unreachable, try '/msg <botname> xdcc search <string to search for>' without the angle brackets =="
        notice -q $0 "%XDCCBotStatsScript_Settings{"Name"} v%XDCCBotStatsScript_Settings{"Version"} $b|$b GPL'd for KVIrc $b|$b %XDCCBotStatsScript_Settings{"URL"}"
        return
    }

This ensures that the XDCCBotStatsScript::GetDynamicXDCCBotStats alias exists and the XDCC bot data is available before sending the notice containing the embedded stats. The following is the result:

![!xdcc in channel](https://f92fac806bf10a96c0b8-8a0a46e5f1a5cc9854958bc3503f0f88.ssl.cf1.rackcdn.com/media_entries/3142/channel_xdcc_trigger_example.png)


DCC Admin Chat Functionality
============================

Firstly, configure DCC admin chat functionality via the main Scripts menu (see General Configuration):

Automatically authenticate DCC admin chats: If the script detects a DCC chat started with a nick associated with a registered XDCC bot, it will automatically respond with the recorded password (right-click the relevant bot in the nicklist) when the authentication request message appears.

Require XDCC bot to identify before authentication: **Recommended to enable this** - the bot must have successfully identified with NickServ on the network before you trust DCC chats purporting to come from the registered bot. If this is not enabled, anyone who succeeds in getting the registered bot's nick on the network can then start a DCC chat with you, and as long as they send the correct authentication request line, this script will respond with the admin password. In reality, adminhost should be configured appropriately on the XDCC bot so that only valid users can DCC chat with the bot even if they have the correct password, but it is worth noting.

Quieten DCC admin chat messages: Prevent messages received from the admin chat session highlighting you, popping up the notifier or causing any other GUI disturbance. This allows you to run many DCC admin chat sessions without being disturbed. Messages are still received and displayed in the DCC chat window.

You can now start a normal DCC chat with any registered bot (right-click the bot in the nicklist -> DCC -> Chat), and have this script automatically authenticate etc.


Alias/Scripting Usage
=====================

The script is fully commented so should be fairly accessible for those wanting to see how to take its use further - for alias usage, see comments preceeding the alias, or run the alias without parameters for help/errors.

The main XDCCBotStatsScript alias acts as the sole interface for enabling/disabling and configuring the script, and is what the GUI code calls when a change is needed - you can call everything direct via the alias. In terms of interesting aliases for the user, aside from CanGetBotData allowing you to tell when a bot's data is available, GetXDCCBotData allows you to fetch individual bot stats as they were fetched from the bot or recorded by the user (such as maximum upload speed).


Development
===========

Try out my modification of the [geany](http://www.geany.org/) IDE, extending it to syntax highlight, parse KVIrc Script for aliases, events, variables, shortcut for loading scripts into KVIrc etc: [Github documentation](https://github.com/OmegaPhil/geany-kvircscript/wiki/README---KVIrc-Script-Integration).


Bugs And Feature Requests
=========================

Please create an issue on the [Github issue tracker](https://github.com/OmegaPhil/kvirc-xdcc-bot-stats-script/issues). If people are demonstrably interested in this script, the documentation can be extended.


Contact Details
===============

OmegaPhil@startmail.com
