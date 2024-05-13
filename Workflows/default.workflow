<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ird="http://studio.genesyslab.com/ird/" xmlns:notation="http://www.eclipse.org/gmf/runtime/1.0.2/notation" xmi:version="2.0">
  <ird:StrategyDiagram xmi:id="_cHXIQIhgEeCbvtYNMEKM_w" name="default" designedUsing="Composer 8.1.561.29">
    <history>8.1.0</history>
    <history>8.1.300.01</history>
    <blocks xsi:type="ird:TargetBlock" xmi:id="_dxThkIhgEeCbvtYNMEKM_w" name="Target" category="Target" detach="false" statisticsOrder="Percentage" timeout="10" useAccessCode="false" virtualQueueSelected=""><statistic xmi:id="_mRGq0MwuEeKWBcLFg25MFQ" value="StatLoadBalance" /><targets xmi:id="_LcR5UJKYEeCpu-lnuy3eTw" name="An other Sample Group" statServer="efe" weight="60" threshold="" /><targets xmi:id="_LcR5UZKYEeCpu-lnuy3eTw" name="Sample Group" statServer="Stat_Server" weight="40" threshold="" /><from xmi:id="_mRGq0cwuEeKWBcLFg25MFQ" value="system.DNIS" Source="Variable" /></blocks>
    <blocks xsi:type="ird:BranchingBlock" xmi:id="_dxThk4hgEeCbvtYNMEKM_w" name="Branching1" category="Branching"><conditions xmi:id="_1cfK0JHfEeCRpKhroUDzIA" name="WeekEnd" expression="(CallerDay==_genesys.session.day.Saturday) || (CallerDay==_genesys.session.day.Sunday)" /><conditions xmi:id="_1cfK0ZHfEeCRpKhroUDzIA" name="Open" expression="(CallerTime&gt;'09:00:00') &amp;&amp; (CallerTime &lt;'17:00:00')" /></blocks>
    <blocks xsi:type="ird:PlayApplicationBlock" xmi:id="_dxThlohgEeCbvtYNMEKM_w" name="PlayDefault" category="Play Application" resource="/Callflows/NonBusinessHrs.callflow" type="ProjectFile" />
    <blocks xsi:type="ird:PlayApplicationBlock" xmi:id="_dxdSkIhgEeCbvtYNMEKM_w" name="PlayWeekend" category="Play Application" resource="/Callflows/WeekendMsg.callflow" type="ProjectFile" />
    <blocks xsi:type="ird:ExitBlock" xmi:id="_dxdSkYhgEeCbvtYNMEKM_w" name="Exit1" terminating="true" category="Exit" />
    <blocks xsi:type="ird:AssignBlock" xmi:id="_dxdSo4hgEeCbvtYNMEKM_w" name="AssignDateTime" category="Assign"><assignData xmi:id="_rjw3QMwuEeKWBcLFg25MFQ" Key="CallerDay" Value="_genesys.session.dayInZone('ECT')" /><assignData xmi:id="_rjw3QcwuEeKWBcLFg25MFQ" Key="CallerTime" Value="_genesys.session.timeInZone('ECT')" /></blocks>
    <blocks xsi:type="ird:EntryBlock" xmi:id="_gg1p8IhgEeCbvtYNMEKM_w" name="Entry" starting="true" category="Entry"><variables xmi:id="_qktOAMwuEeKWBcLFg25MFQ" name="system.Language" value="'en-US'" description="Application Language" type="System" /><variables xmi:id="_qktOAcwuEeKWBcLFg25MFQ" name="system.CallID" value="_genesys.ixn.interactions[system.InteractionID].voice.callid" description="callid created by the switch." type="System" /><variables xmi:id="_qktOAswuEeKWBcLFg25MFQ" name="system.DNIS" value="_genesys.ixn.interactions[system.InteractionID].voice.dnis" description="DNIS associated with Called phone number" type="System" /><variables xmi:id="_qktOA8wuEeKWBcLFg25MFQ" name="system.ANI" value="_genesys.ixn.interactions[system.InteractionID].voice.ani" description="ANI associated with the calling party." type="System" /><variables xmi:id="_qktOBMwuEeKWBcLFg25MFQ" name="system.LastErrorEventName" value="'undefined'" description="Last error" type="System" /><variables xmi:id="_qkt1EMwuEeKWBcLFg25MFQ" name="system.LastErrorDescription" value="'undefined'" description="Last error description" type="System" /><variables xmi:id="_qkt1EcwuEeKWBcLFg25MFQ" name="system.WebServiceStubbing" value="'0'" description="Flag to control WebServices Stubbing. '1' - ON" type="System" /><variables xmi:id="_qkt1EswuEeKWBcLFg25MFQ" name="system.TerminateIxnOnExit" value="1" description="Flag to control if Exit block should terminate multimedia interactions. '1' - ON" type="System" /><variables xmi:id="_qkt1E8wuEeKWBcLFg25MFQ" name="system.InteractionID" value="system.StartEvent.data.interactionid" description="The current interaction ID." type="System" /><variables xmi:id="_qkt1FMwuEeKWBcLFg25MFQ" name="system.TenantID" value="parseInt(_genesys.ixn.interactions[system.InteractionID].tenantid)" description="The current Tenant ID." type="System" /><variables xmi:id="_qkt1FcwuEeKWBcLFg25MFQ" name="system.TenantName" value="_genesys.session.tenant" description="The current Tenant name." type="System" /><variables xmi:id="_qkt1FswuEeKWBcLFg25MFQ" name="system.LastTargetComponentSelected" value="'undefined'" description="Target to which the Interaction was routed definitively." type="System" /><variables xmi:id="_qkt1F8wuEeKWBcLFg25MFQ" name="system.LastTargetObjectSelected" value="'undefined'" description="High-level Target to which the Interaction was routed definitively" type="System" /><variables xmi:id="_qkt1GMwuEeKWBcLFg25MFQ" name="system.LastTargetSelected" value="'undefined'" description="DN and the Switch name of the Target to which the Interaction was routed definitively" type="System" /><variables xmi:id="_qkt1GcwuEeKWBcLFg25MFQ" name="system.LastVirtualQueueSelected" value="'undefined'" description="The Alias of the Virtual Queue specified in the target list to which the target where the interaction was routed belongs" type="System" /><variables xmi:id="_qkt1GswuEeKWBcLFg25MFQ" name="system.LastSubmitRequestId" value="'undefined'" description="Requestid  value of the Last queue:submit execution" type="System" /><variables xmi:id="_qkt1G8wuEeKWBcLFg25MFQ" name="system.StartEvent" value="undefined" description="The content of the specified start event" type="System" /><variables xmi:id="_qkt1HMwuEeKWBcLFg25MFQ" name="system.BaseURL" value="getBaseURL()" description="Base URL" type="System" /><variables xmi:id="_qkt1HcwuEeKWBcLFg25MFQ" name="system.RelativePathURL" value="getRelativePathURL()" description="Relative path" type="System" /><variables xmi:id="_qkt1HswuEeKWBcLFg25MFQ" name="system.LastErrorEvent" value="'undefined'" description="Last error" type="System" /><variables xmi:id="_qkt1H8wuEeKWBcLFg25MFQ" name="system.OPM" value="getOPMParameters()" description="Operational Parameters Data Variable" type="System" /><variables xmi:id="_qkt1IMwuEeKWBcLFg25MFQ" name="system.OCS_RecordURI" value="getWorkflowRecordURI()" description="OCS Record URI" type="System" /><variables xmi:id="_qkt1IcwuEeKWBcLFg25MFQ" name="system.OCS_URI" value="getWorkflowOCSURI()" description="OCS URI" type="System" /><variables xmi:id="_qkt1IswuEeKWBcLFg25MFQ" name="system.OCS_Record" value="getWorkflowOCSRecord()" description="OCS Record" type="System" /><variables xmi:id="_qkt1I8wuEeKWBcLFg25MFQ" name="system.ThisDN" value="system.StartEvent.data.focusdeviceid" description="ThisDN attribute of last point of presence for this call" type="System" /><variables xmi:id="_qkt1JMwuEeKWBcLFg25MFQ" name="system.ParentInteractionID" value="_genesys.ixn.interactions[system.InteractionID].parentid" description="The current interaction parent ID." type="System" /><variables xmi:id="_qkt1JcwuEeKWBcLFg25MFQ" name="system.OriginatingSession" value="undefined" description="The originating session context." type="System" /><variables xmi:id="_qkt1JswuEeKWBcLFg25MFQ" name="CallerDay" value="null" description="Enter Description" type="User" /><variables xmi:id="_qkt1J8wuEeKWBcLFg25MFQ" name="CallerTime" value="null" description="Enter Description" type="User" /><variables name="system.InteractionUID" value="_genesys.ixn.interactions[system.InteractionID].g_uid" description="The globally unique ID for the interaction that is defined by the underlying media system." type="System" /><variables name="system.InitialInteractionID" value="system.StartEvent.data.interactionid" description="The ID of the interaction that started this session." type="System" /><variables name="system.CurrentQueue" value="_genesys.ixn.interactions[system.InteractionID].msgbased.queue" description="queue attribute for this interaction." type="System" /><variables name="system.InteractionMediaType" value="undefined" description="The originating media type of the interaction." type="System" /><variables name="system.InteractionType" value="undefined" description="The origin type of the interaction." type="System" /><variables name="system.InteractionSubType" value="undefined" description="The origin sub-type of the interaction." type="System" /><variables name="system.SubmittedBy" value="_genesys.ixn.interactions[system.InteractionID].location.media_server" description="This is the originating media type of the interaction." type="System" /><variables name="system.ExternalID" value="undefined" description="This is the ID of the interaction that has been assigned by the originating media server." type="System" /></blocks>
    <links xsi:type="ird:WorkflowOutputLink" xmi:id="_sAWaMIhgEeCbvtYNMEKM_w" fromBlock="_gg1p8IhgEeCbvtYNMEKM_w" toBlock="_dxdSo4hgEeCbvtYNMEKM_w" />
    <links xsi:type="ird:WorkflowOutputLink" xmi:id="_uyRIMIhgEeCbvtYNMEKM_w" fromBlock="_dxdSo4hgEeCbvtYNMEKM_w" toBlock="_dxThk4hgEeCbvtYNMEKM_w" />
    <links xsi:type="ird:WorkflowOutputLink" xmi:id="_2VpaEIhgEeCbvtYNMEKM_w" name="WeekEnd" fromBlock="_dxThk4hgEeCbvtYNMEKM_w" toBlock="_dxdSkIhgEeCbvtYNMEKM_w" />
    <links xsi:type="ird:WorkflowOutputLink" xmi:id="_3BKcQIhgEeCbvtYNMEKM_w" name="default" fromBlock="_dxThk4hgEeCbvtYNMEKM_w" toBlock="_dxThlohgEeCbvtYNMEKM_w" />
    <links xsi:type="ird:WorkflowOutputLink" xmi:id="_3rekkIhgEeCbvtYNMEKM_w" fromBlock="_dxThlohgEeCbvtYNMEKM_w" toBlock="_dxdSkYhgEeCbvtYNMEKM_w" />
    <links xsi:type="ird:WorkflowOutputLink" xmi:id="_4OM3IIhgEeCbvtYNMEKM_w" fromBlock="_dxdSkIhgEeCbvtYNMEKM_w" toBlock="_dxdSkYhgEeCbvtYNMEKM_w" />
    <links xsi:type="ird:WorkflowOutputLink" xmi:id="_4xg_kIhgEeCbvtYNMEKM_w" fromBlock="_dxThkIhgEeCbvtYNMEKM_w" toBlock="_dxdSkYhgEeCbvtYNMEKM_w" />
    <links xsi:type="ird:WorkflowOutputLink" xmi:id="_oWyf4JHfEeCRpKhroUDzIA" name="Open" fromBlock="_dxThk4hgEeCbvtYNMEKM_w" toBlock="_dxThkIhgEeCbvtYNMEKM_w" />
    <namespaces xmi:id="_mRH48MwuEeKWBcLFg25MFQ" name="ws" value="http://www.genesyslab.com/modules/ws" />
    <namespaces xmi:id="_mRH48cwuEeKWBcLFg25MFQ" name="queue" value="http://www.genesyslab.com/modules/queue" />
    <namespaces xmi:id="_mRH48swuEeKWBcLFg25MFQ" name="dialog" value="http://www.genesyslab.com/modules/dialog" />
    <namespaces xmi:id="_mRH488wuEeKWBcLFg25MFQ" name="session" value="http://www.genesyslab.com/modules/session" />
    <namespaces xmi:id="_mRH49MwuEeKWBcLFg25MFQ" name="ixn" value="http://www.genesyslab.com/modules/interaction" />
    <namespaces xmi:id="_mRH49cwuEeKWBcLFg25MFQ" name="classification" value="http://www.genesyslab.com/modules/classification" />
  </ird:StrategyDiagram>
  <notation:Diagram xmi:id="_cHXIQYhgEeCbvtYNMEKM_w" type="Ird" element="_cHXIQIhgEeCbvtYNMEKM_w" name="default.workflow" measurementUnit="Pixel">
    <children xsi:type="notation:Shape" xmi:id="_dxAmoIhgEeCbvtYNMEKM_w" type="1014" element="_dxThkIhgEeCbvtYNMEKM_w">
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmoYhgEeCbvtYNMEKM_w" type="4024" />
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmoohgEeCbvtYNMEKM_w" type="4025" />
      <layoutConstraint xsi:type="notation:Bounds" xmi:id="_dxAmo4hgEeCbvtYNMEKM_w" x="214" y="300" />
    </children>
    <children xsi:type="notation:Shape" xmi:id="_dxAmpIhgEeCbvtYNMEKM_w" type="1005" element="_dxThk4hgEeCbvtYNMEKM_w">
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmpYhgEeCbvtYNMEKM_w" type="4006" />
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmpohgEeCbvtYNMEKM_w" type="4007" />
      <layoutConstraint xsi:type="notation:Bounds" xmi:id="_dxAmp4hgEeCbvtYNMEKM_w" x="214" y="154" />
    </children>
    <children xsi:type="notation:Shape" xmi:id="_dxAmqIhgEeCbvtYNMEKM_w" type="1003" element="_dxThlohgEeCbvtYNMEKM_w">
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmqYhgEeCbvtYNMEKM_w" type="4002" />
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmqohgEeCbvtYNMEKM_w" type="4003" />
      <layoutConstraint xsi:type="notation:Bounds" xmi:id="_dxAmq4hgEeCbvtYNMEKM_w" x="400" y="300" />
    </children>
    <children xsi:type="notation:Shape" xmi:id="_dxAmrIhgEeCbvtYNMEKM_w" type="1003" element="_dxdSkIhgEeCbvtYNMEKM_w">
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmrYhgEeCbvtYNMEKM_w" type="4002" />
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmrohgEeCbvtYNMEKM_w" type="4003" />
      <layoutConstraint xsi:type="notation:Bounds" xmi:id="_dxAmr4hgEeCbvtYNMEKM_w" x="40" y="300" />
    </children>
    <children xsi:type="notation:Shape" xmi:id="_dxAmsIhgEeCbvtYNMEKM_w" type="1002" element="_dxdSkYhgEeCbvtYNMEKM_w">
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmsYhgEeCbvtYNMEKM_w" type="6002" />
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmsohgEeCbvtYNMEKM_w" type="4001" />
      <layoutConstraint xsi:type="notation:Bounds" xmi:id="_dxAms4hgEeCbvtYNMEKM_w" x="214" y="440" />
    </children>
    <children xsi:type="notation:Shape" xmi:id="_dxAmuIhgEeCbvtYNMEKM_w" type="Note" description="Using assign block we are assigning variable &#xD;&#xA;CallerDay with  _genesys.session.dayInZone('ECT')&#xD;&#xA;CallerTime with _genesys.session.timeInZone('ECT')&#xD;&#xA;&#xD;&#xA;In Branching block following conditions are checked:&#xD;&#xA;If CallerDay is weekend then Weekend message will be played to the caller&#xD;&#xA;&#xD;&#xA;If CallerDay is weekday and CallerTime is after business hours then After business hours message will be played to the caller&#xD;&#xA;&#xD;&#xA;If CallerDay is weekdays and CallerTime is within business hours, then the call is load balanced between two agent groups." fillColor="13369343" transparency="0" lineColor="6737151" lineWidth="1">
      <children xsi:type="notation:BasicDecorationNode" xmi:id="_dxAmuYhgEeCbvtYNMEKM_w" type="DiagramName">
        <element xsi:nil="true" />
      </children>
      <children xsi:type="notation:BasicDecorationNode" xmi:id="_dxAmuohgEeCbvtYNMEKM_w" type="Description">
        <element xsi:nil="true" />
      </children>
      <styles xsi:type="notation:TextStyle" xmi:id="_dxAmu4hgEeCbvtYNMEKM_w" />
      <styles xsi:type="notation:LineTypeStyle" xmi:id="_dxAmvIhgEeCbvtYNMEKM_w" />
      <element xsi:nil="true" />
      <layoutConstraint xsi:type="notation:Bounds" xmi:id="_dxAmvYhgEeCbvtYNMEKM_w" x="358" y="46" width="337" height="128" />
    </children>
    <children xsi:type="notation:Shape" xmi:id="_dxAmvohgEeCbvtYNMEKM_w" type="1007" element="_dxdSo4hgEeCbvtYNMEKM_w">
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmv4hgEeCbvtYNMEKM_w" type="4010" />
      <children xsi:type="notation:DecorationNode" xmi:id="_dxAmwIhgEeCbvtYNMEKM_w" type="4011" />
      <layoutConstraint xsi:type="notation:Bounds" xmi:id="_dxAmwYhgEeCbvtYNMEKM_w" x="214" y="71" />
    </children>
    <children xsi:type="notation:Shape" xmi:id="_gg1p_4hgEeCbvtYNMEKM_w" type="1001" element="_gg1p8IhgEeCbvtYNMEKM_w">
      <children xsi:type="notation:DecorationNode" xmi:id="_gg1qAYhgEeCbvtYNMEKM_w" type="6003" />
      <children xsi:type="notation:DecorationNode" xmi:id="_gg1qAohgEeCbvtYNMEKM_w" type="6001" />
      <layoutConstraint xsi:type="notation:Bounds" xmi:id="_gg1qAIhgEeCbvtYNMEKM_w" x="214" y="-20" />
    </children>
    <styles xsi:type="notation:DiagramStyle" xmi:id="_cHXIQohgEeCbvtYNMEKM_w" />
    <edges xsi:type="notation:Connector" xmi:id="_sAWaMYhgEeCbvtYNMEKM_w" type="3001" element="_sAWaMIhgEeCbvtYNMEKM_w" source="_gg1p_4hgEeCbvtYNMEKM_w" target="_dxAmvohgEeCbvtYNMEKM_w" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xsi:type="notation:DecorationNode" xmi:id="_sAWaNIhgEeCbvtYNMEKM_w" type="5001">
        <layoutConstraint xsi:type="notation:Location" xmi:id="_sAWaNYhgEeCbvtYNMEKM_w" x="5" y="5" />
      </children>
      <styles xsi:type="notation:FontStyle" xmi:id="_sAWaMohgEeCbvtYNMEKM_w" />
      <bendpoints xsi:type="notation:RelativeBendpoints" xmi:id="_sAWaM4hgEeCbvtYNMEKM_w" points="[0, 0, 0, -41]$[0, 41, 0, 0]" />
      <sourceAnchor xsi:type="notation:IdentityAnchor" xmi:id="_sAWaNohgEeCbvtYNMEKM_w" id="(0.509090909090909,1.0)" />
      <targetAnchor xsi:type="notation:IdentityAnchor" xmi:id="_sAWaN4hgEeCbvtYNMEKM_w" id="(0.509090909090909,0.0)" />
    </edges>
    <edges xsi:type="notation:Connector" xmi:id="_uyRIMYhgEeCbvtYNMEKM_w" type="3001" element="_uyRIMIhgEeCbvtYNMEKM_w" source="_dxAmvohgEeCbvtYNMEKM_w" target="_dxAmpIhgEeCbvtYNMEKM_w" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xsi:type="notation:DecorationNode" xmi:id="_uyRINIhgEeCbvtYNMEKM_w" type="5001">
        <layoutConstraint xsi:type="notation:Location" xmi:id="_uyRINYhgEeCbvtYNMEKM_w" x="5" y="5" />
      </children>
      <styles xsi:type="notation:FontStyle" xmi:id="_uyRIMohgEeCbvtYNMEKM_w" />
      <bendpoints xsi:type="notation:RelativeBendpoints" xmi:id="_uyRIM4hgEeCbvtYNMEKM_w" points="[-1, 0, 0, -33]$[-1, 33, 0, 0]" />
      <sourceAnchor xsi:type="notation:IdentityAnchor" xmi:id="_uyRINohgEeCbvtYNMEKM_w" id="(0.5181818181818182,1.0)" />
      <targetAnchor xsi:type="notation:IdentityAnchor" xmi:id="_uyRIN4hgEeCbvtYNMEKM_w" id="(0.509090909090909,0.0)" />
    </edges>
    <edges xsi:type="notation:Connector" xmi:id="_2VpaEYhgEeCbvtYNMEKM_w" type="3001" element="_2VpaEIhgEeCbvtYNMEKM_w" source="_dxAmpIhgEeCbvtYNMEKM_w" target="_dxAmrIhgEeCbvtYNMEKM_w" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xsi:type="notation:DecorationNode" xmi:id="_2VpaFIhgEeCbvtYNMEKM_w" type="5001">
        <layoutConstraint xsi:type="notation:Location" xmi:id="_2VpaFYhgEeCbvtYNMEKM_w" x="7" y="35" />
      </children>
      <styles xsi:type="notation:FontStyle" xmi:id="_2VpaEohgEeCbvtYNMEKM_w" />
      <bendpoints xsi:type="notation:RelativeBendpoints" xmi:id="_2VpaE4hgEeCbvtYNMEKM_w" points="[-28, 25, 146, -121]$[-28, 81, 146, -65]$[-174, 81, 0, -65]$[-174, 121, 0, -25]" />
      <sourceAnchor xsi:type="notation:IdentityAnchor" xmi:id="_2VpaFohgEeCbvtYNMEKM_w" id="(0.5181818181818182,1.0)" />
      <targetAnchor xsi:type="notation:IdentityAnchor" xmi:id="_2VpaF4hgEeCbvtYNMEKM_w" id="(0.5272727272727272,0.0)" />
    </edges>
    <edges xsi:type="notation:Connector" xmi:id="_3BKcQYhgEeCbvtYNMEKM_w" type="3001" element="_3BKcQIhgEeCbvtYNMEKM_w" source="_dxAmpIhgEeCbvtYNMEKM_w" target="_dxAmqIhgEeCbvtYNMEKM_w" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xsi:type="notation:DecorationNode" xmi:id="_3BKcRIhgEeCbvtYNMEKM_w" type="5001">
        <layoutConstraint xsi:type="notation:Location" xmi:id="_3BKcRYhgEeCbvtYNMEKM_w" x="30" y="-13" />
      </children>
      <styles xsi:type="notation:FontStyle" xmi:id="_3BKcQohgEeCbvtYNMEKM_w" />
      <bendpoints xsi:type="notation:RelativeBendpoints" xmi:id="_3BKcQ4hgEeCbvtYNMEKM_w" points="[27, 25, -159, -121]$[27, 61, -159, -85]$[186, 61, 0, -85]$[186, 121, 0, -25]" />
      <sourceAnchor xsi:type="notation:IdentityAnchor" xmi:id="_3BKcRohgEeCbvtYNMEKM_w" id="(0.7363636363636363,1.0)" />
      <targetAnchor xsi:type="notation:IdentityAnchor" xmi:id="_3BKcR4hgEeCbvtYNMEKM_w" id="(0.4818181818181818,0.0)" />
    </edges>
    <edges xsi:type="notation:Connector" xmi:id="_3rekkYhgEeCbvtYNMEKM_w" type="3001" element="_3rekkIhgEeCbvtYNMEKM_w" source="_dxAmqIhgEeCbvtYNMEKM_w" target="_dxAmsIhgEeCbvtYNMEKM_w" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xsi:type="notation:DecorationNode" xmi:id="_3roVkIhgEeCbvtYNMEKM_w" type="5001">
        <layoutConstraint xsi:type="notation:Location" xmi:id="_3roVkYhgEeCbvtYNMEKM_w" x="5" y="5" />
      </children>
      <styles xsi:type="notation:FontStyle" xmi:id="_3rekkohgEeCbvtYNMEKM_w" />
      <bendpoints xsi:type="notation:RelativeBendpoints" xmi:id="_3rekk4hgEeCbvtYNMEKM_w" points="[0, 0, 299, -150]$[-299, 150, 0, 0]" />
      <sourceAnchor xsi:type="notation:IdentityAnchor" xmi:id="_3roVkohgEeCbvtYNMEKM_w" id="(0.5181818181818182,1.0)" />
      <targetAnchor xsi:type="notation:IdentityAnchor" xmi:id="_3roVk4hgEeCbvtYNMEKM_w" id="(0.5272727272727272,0.0)" />
    </edges>
    <edges xsi:type="notation:Connector" xmi:id="_4OM3IYhgEeCbvtYNMEKM_w" type="3001" element="_4OM3IIhgEeCbvtYNMEKM_w" source="_dxAmrIhgEeCbvtYNMEKM_w" target="_dxAmsIhgEeCbvtYNMEKM_w" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xsi:type="notation:DecorationNode" xmi:id="_4OM3JIhgEeCbvtYNMEKM_w" type="5001">
        <layoutConstraint xsi:type="notation:Location" xmi:id="_4OM3JYhgEeCbvtYNMEKM_w" x="5" y="5" />
      </children>
      <styles xsi:type="notation:FontStyle" xmi:id="_4OM3IohgEeCbvtYNMEKM_w" />
      <bendpoints xsi:type="notation:RelativeBendpoints" xmi:id="_4OM3I4hgEeCbvtYNMEKM_w" points="[0, 0, 49, -99]$[-49, 99, 0, 0]" />
      <sourceAnchor xsi:type="notation:IdentityAnchor" xmi:id="_4OM3JohgEeCbvtYNMEKM_w" id="(0.509090909090909,1.0)" />
      <targetAnchor xsi:type="notation:IdentityAnchor" xmi:id="_4OM3J4hgEeCbvtYNMEKM_w" id="(0.509090909090909,0.0)" />
    </edges>
    <edges xsi:type="notation:Connector" xmi:id="_4xg_kYhgEeCbvtYNMEKM_w" type="3001" element="_4xg_kIhgEeCbvtYNMEKM_w" source="_dxAmoIhgEeCbvtYNMEKM_w" target="_dxAmsIhgEeCbvtYNMEKM_w" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xsi:type="notation:DecorationNode" xmi:id="_4xg_lIhgEeCbvtYNMEKM_w" type="5001">
        <layoutConstraint xsi:type="notation:Location" xmi:id="_4xg_lYhgEeCbvtYNMEKM_w" x="5" y="5" />
      </children>
      <styles xsi:type="notation:FontStyle" xmi:id="_4xg_kohgEeCbvtYNMEKM_w" />
      <bendpoints xsi:type="notation:RelativeBendpoints" xmi:id="_4xg_k4hgEeCbvtYNMEKM_w" points="[0, 0, -168, -148]$[168, 148, 0, 0]" />
      <sourceAnchor xsi:type="notation:IdentityAnchor" xmi:id="_4xg_lohgEeCbvtYNMEKM_w" id="(0.4727272727272727,1.0)" />
      <targetAnchor xsi:type="notation:IdentityAnchor" xmi:id="_4xg_l4hgEeCbvtYNMEKM_w" id="(0.4909090909090909,0.0)" />
    </edges>
    <edges xsi:type="notation:Connector" xmi:id="_oWyf4ZHfEeCRpKhroUDzIA" type="3001" element="_oWyf4JHfEeCRpKhroUDzIA" source="_dxAmpIhgEeCbvtYNMEKM_w" target="_dxAmoIhgEeCbvtYNMEKM_w" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xsi:type="notation:DecorationNode" xmi:id="_oWyf5JHfEeCRpKhroUDzIA" type="5001">
        <layoutConstraint xsi:type="notation:Location" xmi:id="_oWyf5ZHfEeCRpKhroUDzIA" x="49" y="-26" />
      </children>
      <styles xsi:type="notation:FontStyle" xmi:id="_oWyf4pHfEeCRpKhroUDzIA" />
      <bendpoints xsi:type="notation:RelativeBendpoints" xmi:id="_oWyf45HfEeCRpKhroUDzIA" points="[-2, 0, 0, -96]$[-2, 96, 0, 0]" />
      <sourceAnchor xsi:type="notation:IdentityAnchor" xmi:id="_oW7p0JHfEeCRpKhroUDzIA" id="(0.5181818181818182,1.0)" />
      <targetAnchor xsi:type="notation:IdentityAnchor" xmi:id="_oW7p0ZHfEeCRpKhroUDzIA" id="(0.5,0.0)" />
    </edges>
  </notation:Diagram>
</xmi:XMI>
