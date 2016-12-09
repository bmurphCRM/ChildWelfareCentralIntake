<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Status</fullName>
        <description>Update Status to Pending Approval</description>
        <field>Status__c</field>
        <literalValue>Pending Approval</literalValue>
        <name>Update Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Closed</fullName>
        <description>Update Status to Closed</description>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Update Status to Closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Open</fullName>
        <description>Approver Rejection Updated Status to Open</description>
        <field>Status__c</field>
        <literalValue>Open</literalValue>
        <name>Update Status to Open</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <tasks>
        <fullName>Automatically_Closed_Allegation</fullName>
        <assignedTo>supervisor@centralintake.demo</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Automatically closed allegation based on approval by supervisor</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Automatically Closed Allegation</subject>
    </tasks>
</Workflow>
