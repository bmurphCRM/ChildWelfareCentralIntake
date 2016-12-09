<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Assign_to_New_Referral_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>New_Referral_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Assign to New Referral Queue</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MALatitude_c_Purge</fullName>
        <field>MALatitude__c</field>
        <name>Referral__c.MALatitude_c_Purge</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MALongitude_c_Purge</fullName>
        <field>MALongitude__c</field>
        <name>Referral__c.MALongitude_c_Purge</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mandated_Reporter_False</fullName>
        <field>Mandated_Reporter__c</field>
        <literalValue>0</literalValue>
        <name>Mandated Reporter False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mandated_Reporter_True</fullName>
        <field>Mandated_Reporter__c</field>
        <literalValue>1</literalValue>
        <name>Mandated Reporter True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_Screening</fullName>
        <field>Status__c</field>
        <literalValue>Screening</literalValue>
        <name>Update to Screening</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Mandated Reporter False</fullName>
        <actions>
            <name>Mandated_Reporter_False</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Referral__c.Reporter_Type__c</field>
            <operation>equals</operation>
            <value>Anonymous,Athletic Coach,Citizen,Clergy,Other</value>
        </criteriaItems>
        <description>Flag mandated reporter FALSE when certain reporter types are selected</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Mandated Reporter Flag True</fullName>
        <actions>
            <name>Mandated_Reporter_True</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Referral__c.Reporter_Type__c</field>
            <operation>equals</operation>
            <value>Day Care Provider,Legal Personnel,Medical Personnel,Police/Law Enforcement,School Official</value>
        </criteriaItems>
        <description>Flag mandated reporter TRUE when certain reporter types are selected</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Standard Tasks for New Referrals</fullName>
        <actions>
            <name>Assign_to_New_Referral_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_to_Screening</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Conduct_Initial_Safety_Assessment</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Document_Allegations</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Document_Complete_Referral_Record_Data</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Referral__c.Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <description>Auto-generate standard tasks on a new referral</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>a071500000XqgyJAAR_Purge</fullName>
        <actions>
            <name>MALatitude_c_Purge</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>MALongitude_c_Purge</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Referral__c.a071500000XqgyJAAR_Purge</description>
        <formula>OR(ISCHANGED(Street__c),ISCHANGED(City__c),ISCHANGED(State__c),ISCHANGED(Postal_Code__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Conduct_Initial_Safety_Assessment</fullName>
        <assignedToType>owner</assignedToType>
        <description>Conduct Initial Safety Assessment to determine response priority</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Conduct Initial Safety Assessment</subject>
    </tasks>
    <tasks>
        <fullName>Document_Allegations</fullName>
        <assignedToType>owner</assignedToType>
        <description>Add allegations, alleged victims and alleged offenders</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Document Allegations</subject>
    </tasks>
    <tasks>
        <fullName>Document_Complete_Referral_Record_Data</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please document all Referral Data including reporting party, category and location</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Document &amp; Complete Referral Record Data</subject>
    </tasks>
    <tasks>
        <fullName>Please_review_new_referral</fullName>
        <assignedTo>supervisor@centralintake.demo</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Initial activity by WF</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Please review new referral</subject>
    </tasks>
</Workflow>
