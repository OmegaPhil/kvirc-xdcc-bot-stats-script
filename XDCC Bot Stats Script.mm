<map version="freeplane 1.2.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="XDCC Bot Stats Script" FOLDED="false" ID="ID_626258206" CREATED="1368970935263" MODIFIED="1374266523646" COLOR="#000000">
<font SIZE="18"/>
<hook NAME="MapStyle">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="bubble">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
<edge WIDTH="1"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<node TEXT="ctcp &lt;bot&gt; status" FOLDED="true" POSITION="right" ID="ID_720389776" CREATED="1368966489859" MODIFIED="1374266601630" COLOR="#0033ff">
<font SIZE="16"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="2258 606277 33425 9657029 6 200 0 500 0 0 107078.8 0 185396 1545.0 62586.3" ID="ID_203006197" CREATED="1368966509570" MODIFIED="1374266610685" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="See &apos;status&apos; command notes in official iroffer documentation" ID="ID_1774655036" CREATED="1368966894596" MODIFIED="1374266610692" COLOR="#00b439" LINK="http://iroffer.org/docs/admin.html#status">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="DCC chat status command" FOLDED="true" POSITION="right" ID="ID_1887367837" CREATED="1368968051252" MODIFIED="1374266601634" COLOR="#0033ff">
<font SIZE="16"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Stat: 11/100 Sls, 7/500 Q, 0/1000 I, 0/0 SrQ (Bdw: 835268K, 6960.6K/s, 0.0K/s Up, 6960.6K/s Down)" ID="ID_440305606" CREATED="1368968056530" MODIFIED="1374266610694" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="iroffer dinoex mod notes" FOLDED="true" POSITION="right" ID="ID_1230065998" CREATED="1368969529876" MODIFIED="1374266601634" COLOR="#0033ff">
<font SIZE="16"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="DCC chat status" FOLDED="true" ID="ID_969698381" CREATED="1368969888183" MODIFIED="1374266610696" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="iroffer_misc.c:getstatusline" ID="ID_113092758" CREATED="1368969895543" MODIFIED="1374266568928" COLOR="#990000">
<font SIZE="12"/>
</node>
</node>
<node TEXT="CTCP status" FOLDED="true" ID="ID_1327844152" CREATED="1368970182866" MODIFIED="1374266610697" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="iroffer_misc.c:getstatuslinenums" ID="ID_1365669095" CREATED="1368969895543" MODIFIED="1374266568931" COLOR="#990000">
<font SIZE="12"/>
</node>
</node>
<node TEXT="Have asked dinoex if its possible to extend the status line to include the idle queue (19.05.13 in #dinoex). This was ignored, so I have now created a feature request (15.06.13, linked)" ID="ID_154820761" CREATED="1368971359258" MODIFIED="1374266610698" COLOR="#00b439" LINK="http://iroffer.dinoex.de/issues/171">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="GUI" FOLDED="true" POSITION="left" ID="ID_1987771094" CREATED="1368993595534" MODIFIED="1374266601635" COLOR="#0033ff">
<font SIZE="16"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Bot registration" FOLDED="true" ID="ID_713689099" CREATED="1368993599187" MODIFIED="1374266610699" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Nicklist popup" ID="ID_1345416449" CREATED="1368993625932" MODIFIED="1374266568931" COLOR="#990000">
<font SIZE="12"/>
</node>
</node>
<node TEXT="Bot removal" FOLDED="true" ID="ID_1857732131" CREATED="1368993609651" MODIFIED="1374266610699" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Nicklist popup" ID="ID_1644028046" CREATED="1368993633604" MODIFIED="1374266568932" COLOR="#990000">
<font SIZE="12"/>
</node>
<node TEXT="Full dialog - bot may not be on the server" ID="ID_250520215" CREATED="1368993639247" MODIFIED="1374266568932" COLOR="#990000">
<font SIZE="12"/>
</node>
</node>
<node TEXT="Bots listing" FOLDED="true" ID="ID_1054619688" CREATED="1368993618445" MODIFIED="1374266610699" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Standard echo to the current window" ID="ID_1473554229" CREATED="1368993653897" MODIFIED="1374266568933" COLOR="#990000">
<font SIZE="12"/>
</node>
</node>
<node TEXT="XDCC stats enabling/settings editing" FOLDED="true" ID="ID_1634486866" CREATED="1368993728135" MODIFIED="1374266610699" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Channel popup" ID="ID_124971233" CREATED="1368993741633" MODIFIED="1374266568933" COLOR="#990000">
<font SIZE="12"/>
</node>
</node>
</node>
<node TEXT="Limitations" FOLDED="true" POSITION="left" ID="ID_620090245" CREATED="1369144490887" MODIFIED="1374266601635" COLOR="#0033ff">
<font SIZE="16"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="CTCP status only allows for 2 minute average bandwidth" ID="ID_317292530" CREATED="1369144496574" MODIFIED="1374266610700" COLOR="#00b439">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
</node>
</map>
