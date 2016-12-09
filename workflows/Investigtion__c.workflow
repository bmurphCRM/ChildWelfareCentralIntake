<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Standard Tasks for New Investigations</fullName>
        <actions>
            <name>Document_all_Evidence</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Interview_all_Parties</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Submit_for_Manager_Review</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Investigtion__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Pending,Under Review,Closed</value>
        </criteriaItems>
        <description>Standard Tasks to be completed  for New Investigations</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Document_all_Evidence</fullName>
        <assignedTo>b.murphy@centralintake.demo</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Document all evidence such as notes, activities taken, attachments, chatter posts etc.</description>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Document all Evidence</subject>
    </tasks>
    <tasks>
        <fullName>Interview_all_Parties</fullName>
        <assignedTo>b.murphy@centralintake.demo</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Interview all parties involved in the allegations</description>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Interview all Parties</subject>
    </tasks>
    <tasks>
        <fullName>Submit_for_Manager_Review</fullName>
        <assignedTo>b.murphy@centralintake.demo</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Submit investigation for management review/approval when completed</description>
        <dueDateOffset>4</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Submit for Manager Review</subject>
    </tasks>
</Workflow>
