<?xml version="1.0" encoding="utf-8"?>
<!--
Copyright 2014 Technische Universitaet Wien (TUW), Distributed Systems Group E184

This work was partially supported by the European Commission in terms of the 
EU FP7 SmartSociety project, grant No. 600854

Licensed under the Apache License, Version 2.0 (the "License"); you may not
use this file except in compliance with the License. You may obtain a copy of
the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations under
the License.
-->
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="b0401a85-18d0-402f-adfd-a0dd2abeda46" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGL" Name="PRINGL" DisplayName="PRINGL" Namespace="at.ac.tuwien.dsg.PRINGL" ProductName="PRINGL" CompanyName="TU Wien" PackageGuid="ef6d6057-81a7-47e5-8884-1f6659772c0e" PackageNamespace="at.ac.tuwien.dsg.PRINGL" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="2018a129-24d6-4702-859a-da98ddcd4606" Description="The root in which all other elements are embedded. Appears as a diagram." Name="IncentiveStrategy" DisplayName="Incentive Strategy" Namespace="at.ac.tuwien.dsg.PRINGL">
      <Properties>
        <DomainProperty Id="59491d0d-b533-40ea-bb80-e6fad2f69c11" Description="Description for at.ac.tuwien.dsg.PRINGL.IncentiveStrategy.Strategy Name" Name="StrategyName" DisplayName="Strategy Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="IncentiveElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveElements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="02ee9db6-d9e4-4184-9f95-86f5d3e80b03" Description="Description for at.ac.tuwien.dsg.PRINGL.IncentiveElement" Name="IncentiveElement" DisplayName="Incentive Element" InheritanceModifier="Abstract" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="Container" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="PRINGLParameter" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ElementHasParameters.PRINGLParameter</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="0ad965b8-4f2f-40a3-9b68-dee6c8bd4388" Description="Description for at.ac.tuwien.dsg.PRINGL.SimpleDefinition" Name="SimpleDefinition" DisplayName="Simple Definition" InheritanceModifier="Abstract" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="PRINGLDefinition" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="d1f3bccc-8c67-4cce-b31c-9c08d3049471" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeDefinition" Name="CompositeDefinition" DisplayName="Composite Definition" InheritanceModifier="Abstract" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="PRINGLDefinition" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="046d0d9f-04cc-4762-a75d-0ceb7fab0f71" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLDefinition" Name="PRINGLDefinition" DisplayName="PRINGLDefinition" InheritanceModifier="Abstract" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="IncentiveElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="72011701-93fe-464c-9c8b-4d5762976cc6" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLInstance" Name="PRINGLInstance" DisplayName="PRINGLInstance" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="IncentiveElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="8e5fe271-fff2-4d66-869d-615b92ddeb66" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLInstance.Metatype" Name="Metatype" DisplayName="Metatype">
          <Type>
            <DomainEnumerationMoniker Name="PRINGLMetatype" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="33b80224-249a-4f52-a24e-c41371e81f6c" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLInstance.Sub Metatype" Name="SubMetatype" DisplayName="Sub Metatype">
          <Type>
            <DomainEnumerationMoniker Name="PRINGLSubMetatype" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="56c48b23-3d88-464b-a236-ec20bcd6dc09" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLParameter" Name="PRINGLParameter" DisplayName="PRINGLParameter" Namespace="at.ac.tuwien.dsg.PRINGL">
      <Properties>
        <DomainProperty Id="e9952c1e-3907-4690-ab3c-5caadc1bd1a8" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLParameter.Type" Name="Type" DisplayName="Type">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8aa54349-434b-4dd2-9a3e-a17b886712d6" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLParameter.Initial Value" Name="InitialValue" DisplayName="Initial Value">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a072277a-8711-4e3d-9ea0-7e1dce03180f" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLParameter.Propagation" Name="Propagation" DisplayName="Propagation">
          <Type>
            <ExternalTypeMoniker Name="/System/Char" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2f1c0f5a-2763-4cee-90b8-2351a01fc089" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLParameter.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="f12dfe20-effe-4bac-a2a6-09e0465ae1bf" Description="Description for at.ac.tuwien.dsg.PRINGL.Filter" Name="Filter" DisplayName="Filter" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="SimpleDefinition" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="c7ad1d7b-ccac-492c-bd82-7cfb6a758a30" Description="Description for at.ac.tuwien.dsg.PRINGL.Filter.Time_restr" Name="time_restr" DisplayName="Time_restr">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3aa5514e-a36d-4f73-9266-f19d021816ed" Description="Description for at.ac.tuwien.dsg.PRINGL.Filter.Temp_spec" Name="temp_spec" DisplayName="Temp_spec">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f9a43c7a-7664-45d6-8bd9-2dcd64e66b76" Description="Description for at.ac.tuwien.dsg.PRINGL.Filter.Auxiliary" Name="auxiliary" DisplayName="Auxiliary">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6e8afdc5-d105-4ed0-bad7-9f49682cd9d3" Description="Description for at.ac.tuwien.dsg.PRINGL.Filter.Predicate" Name="predicate" DisplayName="Predicate">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="e25876ea-5c4f-4bc3-893f-0ff800163ed8" Description="Description for at.ac.tuwien.dsg.PRINGL.RewAction" Name="RewAction" DisplayName="Rew Action" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="SimpleDefinition" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="e38c5603-d996-4bd6-a757-effabced8aa4" Description="Description for at.ac.tuwien.dsg.PRINGL.RewAction.Filter" Name="filter" DisplayName="Filter">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9abeac57-9cd9-4a7c-8b95-1fde13dba7d8" Description="Description for at.ac.tuwien.dsg.PRINGL.RewAction.Exec_cond" Name="exec_cond" DisplayName="Exec_cond">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="cb0728dc-ea00-4244-bec6-c662dbf0e3ef" Description="Description for at.ac.tuwien.dsg.PRINGL.RewAction.Exec_times" Name="exec_times" DisplayName="Exec_times">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9f0cee37-116b-4fee-9adf-a8d22c4dc2b9" Description="Description for at.ac.tuwien.dsg.PRINGL.RewAction.Temp_spec" Name="temp_spec" DisplayName="Temp_spec">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="eaf958c7-50d6-4a36-b92d-cdc3d2288a93" Description="Description for at.ac.tuwien.dsg.PRINGL.RewAction.Action_logic" Name="action_logic" DisplayName="Action_logic">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="d07bd543-9244-48d1-a904-89ae4b15778b" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMech" Name="IncMech" DisplayName="Inc Mech" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="SimpleDefinition" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="91ef2d25-8dcc-4d81-ab99-794473634eb3" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMech.Exec_cond" Name="exec_cond" DisplayName="Exec_cond">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a72a9757-1391-4c07-a572-d06e0d91211c" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMech.Appl_restr" Name="appl_restr" DisplayName="Appl_restr">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="ffb57ea0-305c-4654-8920-4795cae60365" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMech.Filter" Name="filter" DisplayName="Filter">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="fcd0ad9c-9bb5-4d75-af86-972b6e45eef7" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMech.Inc_cond" Name="inc_cond" DisplayName="Inc_cond">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="64294e2f-bdb5-4f1c-9944-d1cd1b1bcafe" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMech.Rew_action" Name="rew_action" DisplayName="Rew_action">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8312c9e7-96d2-4033-ae03-1b68bf065818" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMech.Prority" Name="prority" DisplayName="Prority">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="14a54e41-6818-41c4-9d02-f3304c46e38c" Description="Description for at.ac.tuwien.dsg.PRINGL.IncLogic" Name="IncLogic" DisplayName="Inc Logic" Namespace="at.ac.tuwien.dsg.PRINGL">
      <BaseClass>
        <DomainClassMoniker Name="SimpleDefinition" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="568bef63-2389-4faf-940e-aea2641fc89c" Description="Description for at.ac.tuwien.dsg.PRINGL.IncLogic.Sub Metatype" Name="SubMetatype" DisplayName="Sub Metatype">
          <Type>
            <DomainEnumerationMoniker Name="PRINGLSubMetatype" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c4e7b8ee-3e0f-4803-b85f-1d43c9bbfc1e" Description="Description for at.ac.tuwien.dsg.PRINGL.IncLogic.Output Type" Name="OutputType" DisplayName="Output Type">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7c9cbd35-4add-420a-a2fd-7d4ad876f503" Description="Description for at.ac.tuwien.dsg.PRINGL.IncLogic.Code" Name="Code" DisplayName="Code">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="3a631bdb-acc3-4061-99b9-ae09768a1b96" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeFilter" Name="CompositeFilter" DisplayName="Composite Filter" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true">
      <BaseClass>
        <DomainClassMoniker Name="CompositeDefinition" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective UsesCustomAccept="true">
          <Index>
            <DomainClassMoniker Name="InnerActionInstance" />
          </Index>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="cd6329ff-b6f1-4474-b2aa-6b33e1adaf65" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeAction" Name="CompositeAction" DisplayName="Composite Action" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true">
      <BaseClass>
        <DomainClassMoniker Name="CompositeDefinition" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective UsesCustomAccept="true">
          <Index>
            <DomainClassMoniker Name="InnerFilterInstance" />
          </Index>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="0e2290db-06cb-4065-9f36-dc43d2559038" Description="Description for at.ac.tuwien.dsg.PRINGL.Container" Name="Container" DisplayName="Container" InheritanceModifier="Abstract" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true">
      <Properties>
        <DomainProperty Id="00e65998-d3cb-440f-9b9b-b49835dcda02" Description="Description for at.ac.tuwien.dsg.PRINGL.Container.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="InnerFilterInstance" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ContainerHasInnerFilterInstances.InnerFilterInstances</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="InnerActionInstance" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ContainerHasInnerActionInstances.InnerActionInstances</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="19b296cf-ae62-4883-9de0-b9314ccefef9" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterInstance" Name="InnerFilterInstance" DisplayName="Inner Filter Instance" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true">
      <BaseClass>
        <DomainClassMoniker Name="Container" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="0c6a873f-1754-4d38-96c7-7fa3e0e85366" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterInstance.Position" Name="Position" DisplayName="Position" DefaultValue="Normal">
          <Type>
            <DomainEnumerationMoniker Name="InnerShapeFlowPosition" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="5e8adbc8-222b-47f6-bdae-e69459c6f6e3" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterInstance.Type" Name="Type" DisplayName="Type">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2aa9e429-1175-4d53-8763-bdf5fb62132a" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterInstance.Full Name" Name="fullName" DisplayName="Full Name" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="54d9052f-a12a-4cae-b4db-24efd6f37a6e" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionInstance" Name="InnerActionInstance" DisplayName="Inner Action Instance" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true">
      <BaseClass>
        <DomainClassMoniker Name="Container" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="35c74205-4c5b-4715-93e1-682858b8c420" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionInstance.Position" Name="Position" DisplayName="Position" DefaultValue="Normal">
          <Type>
            <DomainEnumerationMoniker Name="InnerShapeFlowPosition" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f0a6284c-0199-43f4-bb81-cee7358bc377" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionInstance.Type" Name="Type" DisplayName="Type">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="79d5ec9c-2bdb-4846-8947-7251d77fe509" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionInstance.Full Name" Name="fullName" DisplayName="Full Name" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="8e4bbe11-0816-4611-8016-fa55f1ce590a" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMechInstance" Name="IncMechInstance" DisplayName="Inc Mech Instance" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true">
      <BaseClass>
        <DomainClassMoniker Name="IncentiveElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="814b5501-fbf6-40ab-a6b2-75a8a42cef59" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMechInstance.Priority" Name="priority" DisplayName="Priority">
          <Type>
            <ExternalTypeMoniker Name="/System/Int16" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="49cd6feb-a22d-4dc7-942b-3f5bb4977b61" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMechInstance.Type" Name="Type" DisplayName="Type">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6eeffc00-e0e6-47f0-a3b4-b638c2ee9ea5" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMechInstance.Full Name" Name="fullName" DisplayName="Full Name" Kind="Calculated">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="db3f7693-cb20-4630-a974-7f0017e35005" Description="Description for at.ac.tuwien.dsg.PRINGL.IncentiveStrategyHasIncentiveElements" Name="IncentiveStrategyHasIncentiveElements" DisplayName="Incentive Strategy Has Incentive Elements" Namespace="at.ac.tuwien.dsg.PRINGL" IsEmbedding="true">
      <Source>
        <DomainRole Id="c5656818-10a9-4f7c-9a6f-24dd4191f90c" Description="Description for at.ac.tuwien.dsg.PRINGL.IncentiveStrategyHasIncentiveElements.IncentiveStrategy" Name="IncentiveStrategy" DisplayName="Incentive Strategy" PropertyName="IncentiveElements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Incentive Elements">
          <RolePlayer>
            <DomainClassMoniker Name="IncentiveStrategy" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b777c1b4-3cb0-4093-82d8-2d3ec5cda58a" Description="Description for at.ac.tuwien.dsg.PRINGL.IncentiveStrategyHasIncentiveElements.IncentiveElement" Name="IncentiveElement" DisplayName="Incentive Element" PropertyName="IncentiveStrategy" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Incentive Strategy">
          <RolePlayer>
            <DomainClassMoniker Name="IncentiveElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="5d807c1b-4a13-4df1-adbb-834192314884" Description="Description for at.ac.tuwien.dsg.PRINGL.ElementHasParameters" Name="ElementHasParameters" DisplayName="Element Has Parameters" Namespace="at.ac.tuwien.dsg.PRINGL" IsEmbedding="true">
      <Source>
        <DomainRole Id="80126fb9-d1c4-4fec-831b-bdca3f0b5203" Description="Description for at.ac.tuwien.dsg.PRINGL.ElementHasParameters.IncentiveElement" Name="IncentiveElement" DisplayName="Incentive Element" PropertyName="PRINGLParameter" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="PRINGLParameter">
          <RolePlayer>
            <DomainClassMoniker Name="IncentiveElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="50a6316d-06fc-4b0e-9e5f-086aa4598094" Description="Description for at.ac.tuwien.dsg.PRINGL.ElementHasParameters.PRINGLParameter" Name="PRINGLParameter" DisplayName="PRINGLParameter" PropertyName="IncentiveElement" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Incentive Element">
          <RolePlayer>
            <DomainClassMoniker Name="PRINGLParameter" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d80930a9-bd5a-488d-b012-810d27d0240d" Description="Description for at.ac.tuwien.dsg.PRINGL.DefinitionReferencesInstance" Name="DefinitionReferencesInstance" DisplayName="Definition References Instance" Namespace="at.ac.tuwien.dsg.PRINGL">
      <Source>
        <DomainRole Id="d40c4950-0567-4108-9843-88400dea6a9b" Description="Description for at.ac.tuwien.dsg.PRINGL.DefinitionReferencesInstance.SimpleDefinition" Name="SimpleDefinition" DisplayName="Simple Definition" PropertyName="PRINGLInstance" PropertyDisplayName="PRINGLInstance">
          <RolePlayer>
            <DomainClassMoniker Name="SimpleDefinition" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="7d4f690e-ea59-4445-ab6d-41bbc5fbb5d7" Description="Description for at.ac.tuwien.dsg.PRINGL.DefinitionReferencesInstance.PRINGLInstance" Name="PRINGLInstance" DisplayName="PRINGLInstance" PropertyName="SimpleDefinitions" PropertyDisplayName="Simple Definitions">
          <RolePlayer>
            <DomainClassMoniker Name="PRINGLInstance" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8019f395-de27-4c73-96f5-58e174522efb" Description="Description for at.ac.tuwien.dsg.PRINGL.ContainerHasInnerFilterInstances" Name="ContainerHasInnerFilterInstances" DisplayName="Container Has Inner Filter Instances" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" IsEmbedding="true">
      <Source>
        <DomainRole Id="693a49a4-95e0-4009-9fc5-90ee71f42361" Description="Description for at.ac.tuwien.dsg.PRINGL.ContainerHasInnerFilterInstances.Container" Name="Container" DisplayName="Container" PropertyName="InnerFilterInstances" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Inner Filter Instances">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a81eb923-8b2d-4e29-8f0d-90c96b902778" Description="Description for at.ac.tuwien.dsg.PRINGL.ContainerHasInnerFilterInstances.InnerFilterInstance" Name="InnerFilterInstance" DisplayName="Inner Filter Instance" PropertyName="Container" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Container">
          <RolePlayer>
            <DomainClassMoniker Name="InnerFilterInstance" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="7ba09834-3fdf-4770-9aa5-cdf2b5979301" Description="Description for at.ac.tuwien.dsg.PRINGL.ContainerHasInnerActionInstances" Name="ContainerHasInnerActionInstances" DisplayName="Container Has Inner Action Instances" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" IsEmbedding="true">
      <Source>
        <DomainRole Id="00f72865-95d4-45a7-b6c4-dc1d5a59906b" Description="Description for at.ac.tuwien.dsg.PRINGL.ContainerHasInnerActionInstances.Container" Name="Container" DisplayName="Container" PropertyName="InnerActionInstances" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Inner Action Instances">
          <RolePlayer>
            <DomainClassMoniker Name="Container" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="04e44cc1-da9b-459b-8c93-5e2d1d774731" Description="Description for at.ac.tuwien.dsg.PRINGL.ContainerHasInnerActionInstances.InnerActionInstance" Name="InnerActionInstance" DisplayName="Inner Action Instance" PropertyName="Container" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Container">
          <RolePlayer>
            <DomainClassMoniker Name="InnerActionInstance" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8ca2e7fd-586b-4363-b341-0c53b6cbaf62" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterFlow" Name="InnerFilterFlow" DisplayName="Inner Filter Flow" Namespace="at.ac.tuwien.dsg.PRINGL">
      <Properties>
        <DomainProperty Id="c034d3cc-1054-4805-8544-cbf35a0dc9e8" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterFlow.Is Complemented" Name="IsComplemented" DisplayName="Is Complemented">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="d3b13242-0155-4301-bbf1-6d5330a6bf09" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterFlow.SourceInnerFilterInstance" Name="SourceInnerFilterInstance" DisplayName="Source Inner Filter Instance" PropertyName="FilterFlowTo" PropertyDisplayName="Filter Flow To">
          <RolePlayer>
            <DomainClassMoniker Name="InnerFilterInstance" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fdf29c28-3e8b-403a-be3e-a0ddd301d4fa" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterFlow.TargetInnerFilterInstance" Name="TargetInnerFilterInstance" DisplayName="Target Inner Filter Instance" PropertyName="FilterFlowFrom" PropertyDisplayName="Filter Flow From">
          <RolePlayer>
            <DomainClassMoniker Name="InnerFilterInstance" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="6e79500d-b6ea-491f-bbdc-76fe94a7314e" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionFlow" Name="InnerActionFlow" DisplayName="Inner Action Flow" Namespace="at.ac.tuwien.dsg.PRINGL">
      <Properties>
        <DomainProperty Id="41c144a6-2552-4fac-b2c1-52d38eeaf297" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionFlow.Is Complemented" Name="IsComplemented" DisplayName="Is Complemented">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6b6a4197-0dd7-4377-95fa-370654642d01" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionFlow.Delay" Name="Delay" DisplayName="Delay">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="b9cf047c-97a4-4097-8559-4c25bcd273f1" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionFlow.SourceInnerActionInstance" Name="SourceInnerActionInstance" DisplayName="Source Inner Action Instance" PropertyName="ActionFlowTo" PropertyDisplayName="Action Flow To">
          <RolePlayer>
            <DomainClassMoniker Name="InnerActionInstance" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5ef0e04c-69c7-4afb-a20d-689b30d19b27" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionFlow.TargetInnerActionInstance" Name="TargetInnerActionInstance" DisplayName="Target Inner Action Instance" PropertyName="ActionFlowFrom" PropertyDisplayName="Action Flow From">
          <RolePlayer>
            <DomainClassMoniker Name="InnerActionInstance" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <DomainEnumeration Name="PRINGLSubMetatype" Namespace="at.ac.tuwien.dsg.PRINGL" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLSubMetatype">
      <Literals>
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLSubMetatype.TimeLogic" Name="TimeLogic" Value="5" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLSubMetatype.StructureLogic" Name="StructureLogic" Value="4" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLSubMetatype.PredicateLogic" Name="PredicateLogic" Value="3" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLSubMetatype.FilterLogic" Name="FilterLogic" Value="2" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLSubMetatype.ActionLogic" Name="ActionLogic" Value="1" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLSubMetatype.None" Name="None" Value="0" />
      </Literals>
    </DomainEnumeration>
    <ExternalType Name="Color" Namespace="System.Drawing" />
    <ExternalType Name="LinearGradientMode" Namespace="System.Drawing.Drawing2D" />
    <DomainEnumeration Name="InnerShapeFlowPosition" Namespace="at.ac.tuwien.dsg.PRINGL" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerShapeFlowPosition">
      <Literals>
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.InnerShapeFlowPosition.Initial" Name="Initial" Value="1" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.InnerShapeFlowPosition.Final" Name="Final" Value="-1" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.InnerShapeFlowPosition.Normal" Name="Normal" Value="0" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="PRINGLMetatype" Namespace="at.ac.tuwien.dsg.PRINGL" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLMetatype">
      <Literals>
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLMetatype.Filter" Name="Filter" Value="" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLMetatype.Action" Name="Action" Value="" />
        <EnumerationLiteral Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLMetatype.Logic" Name="Logic" Value="" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="f4e5c2c7-4377-4ff8-8764-fea73d5a3642" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeFilterShape" Name="CompositeFilterShape" DisplayName="Composite Filter Shape" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" FixedTooltipText="Composite Filter Shape" InitialHeight="1" OutlineDashStyle="Dash" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="85199f16-dce1-4334-a515-00bcb89e9d75" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeFilterShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b3d84636-df84-4672-8043-946aace66edb" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeFilterShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="CompositeFilterIconDecorator" DisplayName="Composite Filter Icon Decorator" DefaultIcon="Resources\chevron.png" />
      </ShapeHasDecorators>
    </GeometryShape>
    <ImageShape Id="0b7e6752-268d-4faa-8712-6c9431e93849" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerFilterShape" Name="InnerFilterShape" DisplayName="Inner Filter Shape" Namespace="at.ac.tuwien.dsg.PRINGL" FixedTooltipText="Inner Filter Shape" InitialHeight="0.5" Image="Resources\filter.png">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="InitialStateDecorator" DisplayName="Initial State Decorator" DefaultIcon="Resources\Start.emf" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterMiddleRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="FinalStateDecorator" DisplayName="Final State Decorator" DefaultIcon="Resources\Stop.emf" />
      </ShapeHasDecorators>
    </ImageShape>
    <GeometryShape Id="9cd6fe21-775e-485a-b30a-6cd17e31eace" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeActionShape" Name="CompositeActionShape" DisplayName="Composite Action Shape" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" FixedTooltipText="Composite Action Shape" InitialHeight="1" OutlineDashStyle="Dash" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="7bade874-924a-4748-b22a-6b30885a5e62" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeActionShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="94d7af0e-739d-44c9-8445-4d5a40e08f34" Description="Description for at.ac.tuwien.dsg.PRINGL.CompositeActionShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="CompositeActionIconDecorator" DisplayName="Composite Action Icon Decorator" DefaultIcon="Resources\trapezoid.png" />
      </ShapeHasDecorators>
    </GeometryShape>
    <ImageShape Id="24f98081-6c86-4784-a23e-db7eeeaa0d0b" Description="Description for at.ac.tuwien.dsg.PRINGL.InnerActionShape" Name="InnerActionShape" DisplayName="Inner Action Shape" Namespace="at.ac.tuwien.dsg.PRINGL" FixedTooltipText="Inner Action Shape" InitialHeight="0.5" Image="Resources\action.png">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterMiddleLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="InitialStateDecorator" DisplayName="Initial State Decorator" DefaultIcon="Resources\Start.emf" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="OuterMiddleRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="FinalStateDecorator" DisplayName="Final State Decorator" DefaultIcon="Resources\Stop.emf" />
      </ShapeHasDecorators>
    </ImageShape>
    <CompartmentShape Id="49595544-d32f-47dc-ad02-5b14ab5e8fbc" Description="Description for at.ac.tuwien.dsg.PRINGL.FilterShape" Name="FilterShape" DisplayName="Filter Shape" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" FixedTooltipText="Filter Shape" FillColor="LightGray" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IconDecorator" DisplayName="Icon Decorator" DefaultIcon="Resources\chevron.png" />
      </ShapeHasDecorators>
      <Compartment Name="Params" Title="Params" />
    </CompartmentShape>
    <CompartmentShape Id="507173fa-0833-417e-993e-fa456afaa374" Description="Description for at.ac.tuwien.dsg.PRINGL.RewActionShape" Name="RewActionShape" DisplayName="Rew Action Shape" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" FixedTooltipText="Rew Action Shape" FillColor="LightGray" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IconDecorator" DisplayName="Icon Decorator" DefaultIcon="Resources\trapezoid.png" />
      </ShapeHasDecorators>
      <Compartment Name="Params" Title="Params" />
    </CompartmentShape>
    <CompartmentShape Id="279695a0-4718-4597-b7d8-02a76a568a5d" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMechShape" Name="IncMechShape" DisplayName="Inc Mech Shape" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" FixedTooltipText="Inc Mech Shape" FillColor="LightGray" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IconDecorator" DisplayName="Icon Decorator" DefaultIcon="Resources\rectangle.png" />
      </ShapeHasDecorators>
      <Compartment Name="Params" Title="Params" />
    </CompartmentShape>
    <GeometryShape Id="3b52ea46-a90b-470e-b54e-37099f08965c" Description="Description for at.ac.tuwien.dsg.PRINGL.InstanceShape" Name="InstanceShape" DisplayName="Instance Shape" Namespace="at.ac.tuwien.dsg.PRINGL" FixedTooltipText="Instance Shape" TextColor="White" FillColor="CornflowerBlue" OutlineColor="White" InitialWidth="0.9" InitialHeight="0.9" OutlineThickness="0" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IconDecoratorAction" DisplayName="Icon Decorator Action" DefaultIcon="Resources\trapezoid-big.png" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IconDecoratorFilter" DisplayName="Icon Decorator Filter" DefaultIcon="Resources\chevron-big.png" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IconDecoratorLogic" DisplayName="Icon Decorator Logic" DefaultIcon="Resources\rhomboid-big.png" />
      </ShapeHasDecorators>
    </GeometryShape>
    <CompartmentShape Id="25b9cae9-0ec6-47f9-9301-2fcb65559184" Description="Description for at.ac.tuwien.dsg.PRINGL.IncLogicShape" Name="IncLogicShape" DisplayName="Inc Logic Shape" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" FixedTooltipText="Inc Logic Shape" InitialHeight="1" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="PDecorator" DisplayName="PDecorator" DefaultIcon="Resources\Plogic.png" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="SDecorator" DisplayName="SDecorator" DefaultIcon="Resources\Slogic.png" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="TDecorator" DisplayName="TDecorator" DefaultIcon="Resources\Tlogic.png" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="ADecorator" DisplayName="ADecorator" DefaultIcon="Resources\Alogic.png" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="FDecorator" DisplayName="FDecorator" DefaultIcon="Resources\Flogic.png" />
      </ShapeHasDecorators>
      <Compartment TitleFillColor="White" Name="Params" Title="Params" />
    </CompartmentShape>
    <CompartmentShape Id="22b03f9d-556b-4f4c-84e7-c8cf83f98adb" Description="Description for at.ac.tuwien.dsg.PRINGL.IncMechInstanceShape" Name="IncMechInstanceShape" DisplayName="Inc Mech Instance Shape" Namespace="at.ac.tuwien.dsg.PRINGL" GeneratesDoubleDerived="true" FixedTooltipText="Inc Mech Instance Shape" TextColor="White" FillColor="CornflowerBlue" OutlineColor="White" InitialHeight="1" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="PriorityDecorator" DisplayName="Priority Decorator" DefaultText="PriorityDecorator" />
      </ShapeHasDecorators>
      <Compartment FillColor="CornflowerBlue" TitleFillColor="CornflowerBlue" Name="Params" Title="Params" EntryTextColor="White" TitleTextColor="White" />
    </CompartmentShape>
  </Shapes>
  <Connectors>
    <Connector Id="0cca4938-9556-40d7-abb1-bd4aeb83578b" Description="Description for at.ac.tuwien.dsg.PRINGL.FilterFlowConnector" Name="FilterFlowConnector" DisplayName="Filter Flow Connector" Namespace="at.ac.tuwien.dsg.PRINGL" FixedTooltipText="Filter Flow Connector" TargetEndStyle="FilledArrow">
      <ConnectorHasDecorators Position="SourceBottom" OffsetFromShape="0.1" OffsetFromLine="0" isMoveable="true">
        <IconDecorator Name="ComplementDecorator" DisplayName="Complement Decorator" DefaultIcon="Resources\complement.emf" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="ed149b99-e612-48c1-9174-2826c76317f4" Description="Description for at.ac.tuwien.dsg.PRINGL.ActionFlowConnector" Name="ActionFlowConnector" DisplayName="Action Flow Connector" Namespace="at.ac.tuwien.dsg.PRINGL" FixedTooltipText="Action Flow Connector" TargetEndStyle="FilledArrow">
      <ConnectorHasDecorators Position="SourceBottom" OffsetFromShape="0.1" OffsetFromLine="0" isMoveable="true">
        <IconDecorator Name="ComplementDecorator" DisplayName="Complement Decorator" DefaultIcon="Resources\complement.emf" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="DelayDecorator" DisplayName="Delay Decorator" DefaultText="DelayDecorator" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="4897e00a-e410-46e4-b819-fc9afce06c73" Description="Description for at.ac.tuwien.dsg.PRINGL.InstanceReferenceConnector" Name="InstanceReferenceConnector" DisplayName="Instance Reference Connector" Namespace="at.ac.tuwien.dsg.PRINGL" FixedTooltipText="Instance Reference Connector" DashStyle="Dash" SourceEndStyle="FilledDiamond" TargetEndStyle="FilledArrow" RoutingStyle="Straight" />
  </Connectors>
  <XmlSerializationBehavior Name="PRINGLSerializationBehavior" Namespace="at.ac.tuwien.dsg.PRINGL">
    <ClassData>
      <XmlClassData TypeName="IncentiveStrategy" MonikerAttributeName="" SerializeId="true" MonikerElementName="incentiveStrategyMoniker" ElementName="incentiveStrategy" MonikerTypeName="IncentiveStrategyMoniker">
        <DomainClassMoniker Name="IncentiveStrategy" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="incentiveElements">
            <DomainRelationshipMoniker Name="IncentiveStrategyHasIncentiveElements" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="strategyName">
            <DomainPropertyMoniker Name="IncentiveStrategy/StrategyName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="PRINGLDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="pRINGLDiagramMoniker" ElementName="pRINGLDiagram" MonikerTypeName="PRINGLDiagramMoniker">
        <DiagramMoniker Name="PRINGLDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="IncentiveElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="incentiveElementMoniker" ElementName="incentiveElement" MonikerTypeName="IncentiveElementMoniker">
        <DomainClassMoniker Name="IncentiveElement" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="pRINGLParameter">
            <DomainRelationshipMoniker Name="ElementHasParameters" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="SimpleDefinition" MonikerAttributeName="" SerializeId="true" MonikerElementName="simpleDefinitionMoniker" ElementName="simpleDefinition" MonikerTypeName="SimpleDefinitionMoniker">
        <DomainClassMoniker Name="SimpleDefinition" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="pRINGLInstance">
            <DomainRelationshipMoniker Name="DefinitionReferencesInstance" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CompositeDefinition" MonikerAttributeName="" SerializeId="true" MonikerElementName="compositeDefinitionMoniker" ElementName="compositeDefinition" MonikerTypeName="CompositeDefinitionMoniker">
        <DomainClassMoniker Name="CompositeDefinition" />
      </XmlClassData>
      <XmlClassData TypeName="PRINGLDefinition" MonikerAttributeName="" SerializeId="true" MonikerElementName="pRINGLDefinitionMoniker" ElementName="pRINGLDefinition" MonikerTypeName="PRINGLDefinitionMoniker">
        <DomainClassMoniker Name="PRINGLDefinition" />
      </XmlClassData>
      <XmlClassData TypeName="PRINGLInstance" MonikerAttributeName="" SerializeId="true" MonikerElementName="pRINGLInstanceMoniker" ElementName="pRINGLInstance" MonikerTypeName="PRINGLInstanceMoniker">
        <DomainClassMoniker Name="PRINGLInstance" />
        <ElementData>
          <XmlPropertyData XmlName="metatype">
            <DomainPropertyMoniker Name="PRINGLInstance/Metatype" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="subMetatype">
            <DomainPropertyMoniker Name="PRINGLInstance/SubMetatype" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="IncentiveStrategyHasIncentiveElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="incentiveStrategyHasIncentiveElementsMoniker" ElementName="incentiveStrategyHasIncentiveElements" MonikerTypeName="IncentiveStrategyHasIncentiveElementsMoniker">
        <DomainRelationshipMoniker Name="IncentiveStrategyHasIncentiveElements" />
      </XmlClassData>
      <XmlClassData TypeName="PRINGLParameter" MonikerAttributeName="" SerializeId="true" MonikerElementName="pRINGLParameterMoniker" ElementName="pRINGLParameter" MonikerTypeName="PRINGLParameterMoniker">
        <DomainClassMoniker Name="PRINGLParameter" />
        <ElementData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="PRINGLParameter/Type" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="initialValue">
            <DomainPropertyMoniker Name="PRINGLParameter/InitialValue" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="propagation">
            <DomainPropertyMoniker Name="PRINGLParameter/Propagation" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="PRINGLParameter/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ElementHasParameters" MonikerAttributeName="" SerializeId="true" MonikerElementName="elementHasParametersMoniker" ElementName="elementHasParameters" MonikerTypeName="ElementHasParametersMoniker">
        <DomainRelationshipMoniker Name="ElementHasParameters" />
      </XmlClassData>
      <XmlClassData TypeName="Filter" MonikerAttributeName="" SerializeId="true" MonikerElementName="filterMoniker" ElementName="filter" MonikerTypeName="FilterMoniker">
        <DomainClassMoniker Name="Filter" />
        <ElementData>
          <XmlPropertyData XmlName="time_restr">
            <DomainPropertyMoniker Name="Filter/time_restr" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="temp_spec">
            <DomainPropertyMoniker Name="Filter/temp_spec" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="auxiliary">
            <DomainPropertyMoniker Name="Filter/auxiliary" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="predicate">
            <DomainPropertyMoniker Name="Filter/predicate" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="RewAction" MonikerAttributeName="" SerializeId="true" MonikerElementName="rewActionMoniker" ElementName="rewAction" MonikerTypeName="RewActionMoniker">
        <DomainClassMoniker Name="RewAction" />
        <ElementData>
          <XmlPropertyData XmlName="filter">
            <DomainPropertyMoniker Name="RewAction/filter" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="exec_cond">
            <DomainPropertyMoniker Name="RewAction/exec_cond" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="exec_times">
            <DomainPropertyMoniker Name="RewAction/exec_times" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="temp_spec">
            <DomainPropertyMoniker Name="RewAction/temp_spec" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="action_logic">
            <DomainPropertyMoniker Name="RewAction/action_logic" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="IncMech" MonikerAttributeName="" SerializeId="true" MonikerElementName="incMechMoniker" ElementName="incMech" MonikerTypeName="IncMechMoniker">
        <DomainClassMoniker Name="IncMech" />
        <ElementData>
          <XmlPropertyData XmlName="exec_cond">
            <DomainPropertyMoniker Name="IncMech/exec_cond" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="appl_restr">
            <DomainPropertyMoniker Name="IncMech/appl_restr" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="filter">
            <DomainPropertyMoniker Name="IncMech/filter" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="inc_cond">
            <DomainPropertyMoniker Name="IncMech/inc_cond" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="rew_action">
            <DomainPropertyMoniker Name="IncMech/rew_action" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="prority">
            <DomainPropertyMoniker Name="IncMech/prority" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="IncLogic" MonikerAttributeName="" SerializeId="true" MonikerElementName="incLogicMoniker" ElementName="incLogic" MonikerTypeName="IncLogicMoniker">
        <DomainClassMoniker Name="IncLogic" />
        <ElementData>
          <XmlPropertyData XmlName="subMetatype">
            <DomainPropertyMoniker Name="IncLogic/SubMetatype" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="outputType">
            <DomainPropertyMoniker Name="IncLogic/OutputType" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="code">
            <DomainPropertyMoniker Name="IncLogic/Code" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CompositeFilter" MonikerAttributeName="" SerializeId="true" MonikerElementName="compositeFilterMoniker" ElementName="compositeFilter" MonikerTypeName="CompositeFilterMoniker">
        <DomainClassMoniker Name="CompositeFilter" />
      </XmlClassData>
      <XmlClassData TypeName="CompositeAction" MonikerAttributeName="" SerializeId="true" MonikerElementName="compositeActionMoniker" ElementName="compositeAction" MonikerTypeName="CompositeActionMoniker">
        <DomainClassMoniker Name="CompositeAction" />
      </XmlClassData>
      <XmlClassData TypeName="DefinitionReferencesInstance" MonikerAttributeName="" SerializeId="true" MonikerElementName="definitionReferencesInstanceMoniker" ElementName="definitionReferencesInstance" MonikerTypeName="DefinitionReferencesInstanceMoniker">
        <DomainRelationshipMoniker Name="DefinitionReferencesInstance" />
      </XmlClassData>
      <XmlClassData TypeName="Container" MonikerAttributeName="name" SerializeId="true" MonikerElementName="containerMoniker" ElementName="container" MonikerTypeName="ContainerMoniker">
        <DomainClassMoniker Name="Container" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Container/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="innerFilterInstances">
            <DomainRelationshipMoniker Name="ContainerHasInnerFilterInstances" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="innerActionInstances">
            <DomainRelationshipMoniker Name="ContainerHasInnerActionInstances" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InnerFilterInstance" MonikerAttributeName="" SerializeId="true" MonikerElementName="innerFilterInstanceMoniker" ElementName="innerFilterInstance" MonikerTypeName="InnerFilterInstanceMoniker">
        <DomainClassMoniker Name="InnerFilterInstance" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="filterFlowTo">
            <DomainRelationshipMoniker Name="InnerFilterFlow" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="position">
            <DomainPropertyMoniker Name="InnerFilterInstance/Position" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="InnerFilterInstance/Type" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fullName" Representation="Ignore">
            <DomainPropertyMoniker Name="InnerFilterInstance/fullName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InnerActionInstance" MonikerAttributeName="" SerializeId="true" MonikerElementName="innerActionInstanceMoniker" ElementName="innerActionInstance" MonikerTypeName="InnerActionInstanceMoniker">
        <DomainClassMoniker Name="InnerActionInstance" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="actionFlowTo">
            <DomainRelationshipMoniker Name="InnerActionFlow" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="position">
            <DomainPropertyMoniker Name="InnerActionInstance/Position" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="InnerActionInstance/Type" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fullName" Representation="Ignore">
            <DomainPropertyMoniker Name="InnerActionInstance/fullName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasInnerFilterInstances" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasInnerFilterInstancesMoniker" ElementName="containerHasInnerFilterInstances" MonikerTypeName="ContainerHasInnerFilterInstancesMoniker">
        <DomainRelationshipMoniker Name="ContainerHasInnerFilterInstances" />
      </XmlClassData>
      <XmlClassData TypeName="ContainerHasInnerActionInstances" MonikerAttributeName="" SerializeId="true" MonikerElementName="containerHasInnerActionInstancesMoniker" ElementName="containerHasInnerActionInstances" MonikerTypeName="ContainerHasInnerActionInstancesMoniker">
        <DomainRelationshipMoniker Name="ContainerHasInnerActionInstances" />
      </XmlClassData>
      <XmlClassData TypeName="CompositeFilterShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="compositeFilterShapeMoniker" ElementName="compositeFilterShape" MonikerTypeName="CompositeFilterShapeMoniker">
        <GeometryShapeMoniker Name="CompositeFilterShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="CompositeFilterShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="CompositeFilterShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InnerFilterShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="innerFilterShapeMoniker" ElementName="innerFilterShape" MonikerTypeName="InnerFilterShapeMoniker">
        <ImageShapeMoniker Name="InnerFilterShape" />
      </XmlClassData>
      <XmlClassData TypeName="CompositeActionShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="compositeActionShapeMoniker" ElementName="compositeActionShape" MonikerTypeName="CompositeActionShapeMoniker">
        <GeometryShapeMoniker Name="CompositeActionShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="CompositeActionShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="CompositeActionShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InnerActionShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="innerActionShapeMoniker" ElementName="innerActionShape" MonikerTypeName="InnerActionShapeMoniker">
        <ImageShapeMoniker Name="InnerActionShape" />
      </XmlClassData>
      <XmlClassData TypeName="InnerFilterFlow" MonikerAttributeName="" SerializeId="true" MonikerElementName="innerFilterFlowMoniker" ElementName="innerFilterFlow" MonikerTypeName="InnerFilterFlowMoniker">
        <DomainRelationshipMoniker Name="InnerFilterFlow" />
        <ElementData>
          <XmlPropertyData XmlName="isComplemented">
            <DomainPropertyMoniker Name="InnerFilterFlow/IsComplemented" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InnerActionFlow" MonikerAttributeName="" SerializeId="true" MonikerElementName="innerActionFlowMoniker" ElementName="innerActionFlow" MonikerTypeName="InnerActionFlowMoniker">
        <DomainRelationshipMoniker Name="InnerActionFlow" />
        <ElementData>
          <XmlPropertyData XmlName="isComplemented">
            <DomainPropertyMoniker Name="InnerActionFlow/IsComplemented" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="delay">
            <DomainPropertyMoniker Name="InnerActionFlow/Delay" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FilterFlowConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="filterFlowConnectorMoniker" ElementName="filterFlowConnector" MonikerTypeName="FilterFlowConnectorMoniker">
        <ConnectorMoniker Name="FilterFlowConnector" />
      </XmlClassData>
      <XmlClassData TypeName="ActionFlowConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="actionFlowConnectorMoniker" ElementName="actionFlowConnector" MonikerTypeName="ActionFlowConnectorMoniker">
        <ConnectorMoniker Name="ActionFlowConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FilterShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="filterShapeMoniker" ElementName="filterShape" MonikerTypeName="FilterShapeMoniker">
        <CompartmentShapeMoniker Name="FilterShape" />
      </XmlClassData>
      <XmlClassData TypeName="RewActionShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="rewActionShapeMoniker" ElementName="rewActionShape" MonikerTypeName="RewActionShapeMoniker">
        <CompartmentShapeMoniker Name="RewActionShape" />
      </XmlClassData>
      <XmlClassData TypeName="InstanceReferenceConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="instanceReferenceConnectorMoniker" ElementName="instanceReferenceConnector" MonikerTypeName="InstanceReferenceConnectorMoniker">
        <ConnectorMoniker Name="InstanceReferenceConnector" />
      </XmlClassData>
      <XmlClassData TypeName="IncMechShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="incMechShapeMoniker" ElementName="incMechShape" MonikerTypeName="IncMechShapeMoniker">
        <CompartmentShapeMoniker Name="IncMechShape" />
      </XmlClassData>
      <XmlClassData TypeName="InstanceShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="instanceShapeMoniker" ElementName="instanceShape" MonikerTypeName="InstanceShapeMoniker">
        <GeometryShapeMoniker Name="InstanceShape" />
      </XmlClassData>
      <XmlClassData TypeName="IncLogicShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="incLogicShapeMoniker" ElementName="incLogicShape" MonikerTypeName="IncLogicShapeMoniker">
        <CompartmentShapeMoniker Name="IncLogicShape" />
      </XmlClassData>
      <XmlClassData TypeName="IncMechInstance" MonikerAttributeName="" SerializeId="true" MonikerElementName="incMechInstanceMoniker" ElementName="incMechInstance" MonikerTypeName="IncMechInstanceMoniker">
        <DomainClassMoniker Name="IncMechInstance" />
        <ElementData>
          <XmlPropertyData XmlName="priority">
            <DomainPropertyMoniker Name="IncMechInstance/priority" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="IncMechInstance/Type" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fullName" Representation="Ignore">
            <DomainPropertyMoniker Name="IncMechInstance/fullName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="IncMechInstanceShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="incMechInstanceShapeMoniker" ElementName="incMechInstanceShape" MonikerTypeName="IncMechInstanceShapeMoniker">
        <CompartmentShapeMoniker Name="IncMechInstanceShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="PRINGLExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="DefinitionReferencesInstanceBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="DefinitionReferencesInstance" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Filter" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="SimpleDefinition" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="PRINGLInstance" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="InnerFilterFlowBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="InnerFilterFlow" />
        <SourceDirectives>
          <RolePlayerConnectDirective UsesRoleSpecificCustomAccept="true">
            <AcceptingClass>
              <DomainClassMoniker Name="InnerFilterInstance" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective UsesRoleSpecificCustomAccept="true">
            <AcceptingClass>
              <DomainClassMoniker Name="InnerFilterInstance" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="InnerActionFlowBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="InnerActionFlow" />
        <SourceDirectives>
          <RolePlayerConnectDirective UsesRoleSpecificCustomAccept="true">
            <AcceptingClass>
              <DomainClassMoniker Name="InnerActionInstance" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective UsesRoleSpecificCustomAccept="true">
            <AcceptingClass>
              <DomainClassMoniker Name="InnerActionInstance" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="4f008b47-66fb-4dd5-b7e4-800871e87c6e" Description="Description for at.ac.tuwien.dsg.PRINGL.PRINGLDiagram" Name="PRINGLDiagram" DisplayName="Minimal Language Diagram" Namespace="at.ac.tuwien.dsg.PRINGL">
    <Class>
      <DomainClassMoniker Name="IncentiveStrategy" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="CompositeFilter" />
        <ParentElementPath>
          <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveStrategy/!IncentiveStrategy</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CompositeFilterShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CompositeFilterShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="InnerFilterInstance" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="InnerFilterShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="InnerFilterInstance/fullName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="InnerFilterShape/FinalStateDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="InnerFilterInstance/Position" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Final" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="InnerFilterShape/InitialStateDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="InnerFilterInstance/Position" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Initial" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <ImageShapeMoniker Name="InnerFilterShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="CompositeAction" />
        <ParentElementPath>
          <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveStrategy/!IncentiveStrategy</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CompositeActionShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CompositeActionShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="InnerActionInstance" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="InnerActionShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="InnerActionInstance/fullName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="InnerActionShape/InitialStateDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="InnerActionInstance/Position" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Initial" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="InnerActionShape/FinalStateDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="InnerActionInstance/Position" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Final" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <ImageShapeMoniker Name="InnerActionShape" />
      </ShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Filter" />
        <ParentElementPath>
          <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveStrategy/!IncentiveStrategy</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FilterShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="FilterShape" />
        <CompartmentMap DisplaysCustomString="true">
          <CompartmentMoniker Name="FilterShape/Params" />
          <ElementsDisplayed>
            <DomainPath>ElementHasParameters.PRINGLParameter/!PRINGLParameter</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="PRINGLParameter/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="RewAction" />
        <ParentElementPath>
          <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveStrategy/!IncentiveStrategy</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="RewActionShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="RewActionShape" />
        <CompartmentMap DisplaysCustomString="true">
          <CompartmentMoniker Name="RewActionShape/Params" />
          <ElementsDisplayed>
            <DomainPath>ElementHasParameters.PRINGLParameter/!PRINGLParameter</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="PRINGLParameter/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="IncMech" />
        <ParentElementPath>
          <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveStrategy/!IncentiveStrategy</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="IncMechShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="IncMechShape" />
        <CompartmentMap DisplaysCustomString="true">
          <CompartmentMoniker Name="IncMechShape/Params" />
          <ElementsDisplayed>
            <DomainPath>ElementHasParameters.PRINGLParameter/!PRINGLParameter</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="PRINGLParameter/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="PRINGLInstance" />
        <ParentElementPath>
          <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveStrategy/!IncentiveStrategy</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="InstanceShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="InstanceShape/IconDecoratorAction" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="PRINGLInstance/Metatype" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Action" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="InstanceShape/IconDecoratorFilter" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="PRINGLInstance/Metatype" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Filter" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="InstanceShape/IconDecoratorLogic" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="PRINGLInstance/Metatype" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Logic" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <GeometryShapeMoniker Name="InstanceShape" />
      </ShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="IncLogic" />
        <ParentElementPath>
          <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveStrategy/!IncentiveStrategy</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="IncLogicShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Container/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="IncLogicShape/ADecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="IncLogic/SubMetatype" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="ActionLogic" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="IncLogicShape/FDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="IncLogic/SubMetatype" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="FilterLogic" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="IncLogicShape/PDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="IncLogic/SubMetatype" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="PredicateLogic" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="IncLogicShape/SDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="IncLogic/SubMetatype" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="StructureLogic" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="IncLogicShape/TDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="IncLogic/SubMetatype" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="TimeLogic" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="IncLogicShape" />
        <CompartmentMap DisplaysCustomString="true">
          <CompartmentMoniker Name="IncLogicShape/Params" />
          <ElementsDisplayed>
            <DomainPath>ElementHasParameters.PRINGLParameter/!PRINGLParameter</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="PRINGLParameter/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="IncMechInstance" />
        <ParentElementPath>
          <DomainPath>IncentiveStrategyHasIncentiveElements.IncentiveStrategy/!IncentiveStrategy</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="IncMechInstanceShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="IncMechInstance/fullName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="IncMechInstanceShape/PriorityDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="IncMechInstance/priority" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="IncMechInstanceShape" />
        <CompartmentMap DisplaysCustomString="true">
          <CompartmentMoniker Name="IncMechInstanceShape/Params" />
          <ElementsDisplayed>
            <DomainPath>ElementHasParameters.PRINGLParameter/!PRINGLParameter</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="PRINGLParameter/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="FilterFlowConnector" />
        <DomainRelationshipMoniker Name="InnerFilterFlow" />
        <DecoratorMap>
          <IconDecoratorMoniker Name="FilterFlowConnector/ComplementDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="InnerFilterFlow/IsComplemented" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="True" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ActionFlowConnector" />
        <DomainRelationshipMoniker Name="InnerActionFlow" />
        <DecoratorMap>
          <IconDecoratorMoniker Name="ActionFlowConnector/ComplementDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="InnerActionFlow/IsComplemented" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="True" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ActionFlowConnector/DelayDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="InnerActionFlow/Delay" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="InstanceReferenceConnector" />
        <DomainRelationshipMoniker Name="DefinitionReferencesInstance" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="pringl" EditorGuid="c590e46a-0fd1-4cea-9f4f-7026eeb750ae">
    <RootClass>
      <DomainClassMoniker Name="IncentiveStrategy" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="PRINGLSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Definition">
      <ElementTool Name="CompositeFilterTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Composite filter" Tooltip="Composite Filter Tool" HelpKeyword="CompositeFilterTool">
        <DomainClassMoniker Name="CompositeFilter" />
      </ElementTool>
      <ElementTool Name="CompositeActionTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Composite action" Tooltip="Composite Action Tool" HelpKeyword="CompositeActionTool">
        <DomainClassMoniker Name="CompositeAction" />
      </ElementTool>
      <ElementTool Name="InnerFilterTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Inner filter instance" Tooltip="Inner Filter Tool" HelpKeyword="InnerFilterTool">
        <DomainClassMoniker Name="InnerFilterInstance" />
      </ElementTool>
      <ElementTool Name="InnerActionTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Inner action instance" Tooltip="Inner Action Tool" HelpKeyword="InnerActionTool">
        <DomainClassMoniker Name="InnerActionInstance" />
      </ElementTool>
      <ConnectionTool Name="FilterFlow" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Filter composition" Tooltip="Filter Flow" HelpKeyword="FilterFlow" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="PRINGL/InnerFilterFlowBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="ActionFlow" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Action composition" Tooltip="Action Flow" HelpKeyword="ActionFlow" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="PRINGL/InnerActionFlowBuilder" />
      </ConnectionTool>
      <ElementTool Name="FilterTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Filter" Tooltip="Filter Tool" HelpKeyword="FilterTool">
        <DomainClassMoniker Name="Filter" />
      </ElementTool>
      <ElementTool Name="RewActionTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Rewarding action" Tooltip="Rew Action Tool" HelpKeyword="RewActionTool">
        <DomainClassMoniker Name="RewAction" />
      </ElementTool>
      <ElementTool Name="IncMechTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Incentive Mechanism" Tooltip="Inc Mech Tool" HelpKeyword="IncMechTool">
        <DomainClassMoniker Name="IncMech" />
      </ElementTool>
      <ElementTool Name="IncLogicTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="IncLogicTool" Tooltip="Inc Logic Tool" HelpKeyword="IncLogicTool">
        <DomainClassMoniker Name="IncLogic" />
      </ElementTool>
    </ToolboxTab>
    <ToolboxTab TabText="Declaration">
      <ElementTool Name="InstanceDeclarationTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Instance Declaration" Tooltip="Instance Declaration Tool" HelpKeyword="InstanceDeclarationTool">
        <DomainClassMoniker Name="PRINGLInstance" />
      </ElementTool>
      <ConnectionTool Name="InstanceReferenceTool" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Reference (Instance Declaration)" Tooltip="Instance Reference Tool" HelpKeyword="InstanceReferenceTool" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="PRINGL/DefinitionReferencesInstanceBuilder" />
      </ConnectionTool>
      <ElementTool Name="IncMechInstanceTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Incentive mechanism" Tooltip="Inc Mech Instance Tool" HelpKeyword="IncMechInstanceTool">
        <DomainClassMoniker Name="IncMechInstance" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="PRINGLDiagram" />
  </Designer>
  <Explorer ExplorerGuid="c553fe08-b95c-4674-9147-b614ddf0272b" Title="PRINGL Explorer">
    <ExplorerBehaviorMoniker Name="PRINGL/PRINGLExplorer" />
  </Explorer>
</Dsl>