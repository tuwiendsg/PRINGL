﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using System;
using System.Diagnostics;
using System.Drawing.Design;
using System.Windows.Forms;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace at.ac.tuwien.dsg.PRINGL
{
	/// <summary>
	/// Helper class used to create and initialize toolbox items for this DSL.
	/// </summary>
	/// <remarks>
	/// Double-derived class to allow easier code customization.
	/// </remarks>
	public partial class PRINGLToolboxHelper : PRINGLToolboxHelperBase 
	{
		/// <summary>
		/// Constructs a new PRINGLToolboxHelper.
		/// </summary>
		public PRINGLToolboxHelper(global::System.IServiceProvider serviceProvider)
			: base(serviceProvider) { }
	}
	
	/// <summary>
	/// Helper class used to create and initialize toolbox items for this DSL.
	/// </summary>
	
	[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1001:TypesThatOwnDisposableFieldsShouldBeDisposable", Justification = "The store is disposed on domain shut down")]
	public abstract class PRINGLToolboxHelperBase
	{
		/// <summary>
		/// Toolbox item filter string used to identify PRINGL toolbox items.  
		/// </summary>
		/// <remarks>
		/// See the MSDN documentation for the ToolboxItemFilterAttribute class for more information on toolbox
		/// item filters.
		/// </remarks>
		public const string ToolboxFilterString = "PRINGL.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify FilterFlow connector tool.
		/// </summary>
		public const string FilterFlowFilterString = "FilterFlow.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify ActionFlow connector tool.
		/// </summary>
		public const string ActionFlowFilterString = "ActionFlow.1.0";
		/// <summary>
		/// Toolbox item filter string used to identify InstanceReferenceTool connector tool.
		/// </summary>
		public const string InstanceReferenceToolFilterString = "InstanceReferenceTool.1.0";

	
		private global::System.Collections.Generic.Dictionary<string, DslDesign::ModelingToolboxItem> toolboxItemCache = new global::System.Collections.Generic.Dictionary<string, DslDesign::ModelingToolboxItem>();
		private DslModeling::Store toolboxStore;
		
		private global::System.IServiceProvider sp;
		
		/// <summary>
		/// Constructs a new PRINGLToolboxHelperBase.
		/// </summary>
		protected PRINGLToolboxHelperBase(global::System.IServiceProvider serviceProvider)
		{
			if(serviceProvider == null) throw new global::System.ArgumentNullException("serviceProvider");
			
			this.sp = serviceProvider;
		}
		
		/// <summary>
		/// Serivce provider used to access services from the hosting environment.
		/// </summary>
		protected global::System.IServiceProvider ServiceProvider
		{
			get
			{
				return this.sp;
			}
		}

		/// <summary>
		/// Returns the display name of the tab that should be opened by default when the editor is opened.
		/// </summary>
		public static string DefaultToolboxTabName
		{
			get
			{
				return global::at.ac.tuwien.dsg.PRINGL.PRINGLDomainModel.SingletonResourceManager.GetString("DefinitionToolboxTab", global::System.Globalization.CultureInfo.CurrentUICulture);
			}
		}
		
		
		/// <summary>
		/// Returns the toolbox items count in the default tool box tab.
		/// </summary>
		public static int DefaultToolboxTabToolboxItemsCount
		{
			get
			{
				return 10;
			}
		}
		

		/// <summary>
		/// Returns a list of custom toolbox items to be added dynamically
		/// </summary>
		public virtual global::System.Collections.Generic.IList<DslDesign::ModelingToolboxItem> CreateToolboxItems()
		{
			global::System.Collections.Generic.List<DslDesign::ModelingToolboxItem> toolboxItems = new global::System.Collections.Generic.List<DslDesign::ModelingToolboxItem>();
			return toolboxItems;
		}
		
		/// <summary>
		/// Creates an ElementGroupPrototype for the element tool corresponding to the given domain class id.
		/// Default behavior is to create a prototype containing an instance of the domain class.
		/// Derived classes may override this to add additional information to the prototype.
		/// </summary>
		protected virtual DslModeling::ElementGroupPrototype CreateElementToolPrototype(DslModeling::Store store, global::System.Guid domainClassId)
		{
			DslModeling::ModelElement element = store.ElementFactory.CreateElement(domainClassId);
			DslModeling::ElementGroup elementGroup = new DslModeling::ElementGroup(store.DefaultPartition);
			elementGroup.AddGraph(element, true);
			return elementGroup.CreatePrototype();
		}

		/// <summary>
		/// Returns instance of ModelingToolboxItem based on specified name.
		/// This method must be called from within a Transaction. Failure to do so will result in an exception
		/// </summary>
		/// <param name="itemId">unique name of desired ToolboxItem</param>
		/// <param name="store">Store to perform the operation against</param>
		/// <returns>An instance of ModelingToolboxItem if the itemId can be resolved, null otherwise</returns>
		public virtual DslDesign::ModelingToolboxItem GetToolboxItem(string itemId, DslModeling::Store store)
		{
			DslDesign::ModelingToolboxItem result = null;
			if (string.IsNullOrEmpty(itemId))
			{
				return null;
			}
			if (store == null)
			{
				return null;
			}
			global::System.Resources.ResourceManager resourceManager = global::at.ac.tuwien.dsg.PRINGL.PRINGLDomainModel.SingletonResourceManager;
			global::System.Globalization.CultureInfo resourceCulture = global::System.Globalization.CultureInfo.CurrentUICulture;
			switch(itemId)
			{
				case "at.ac.tuwien.dsg.PRINGL.CompositeFilterToolToolboxItem":
					// Add CompositeFilterTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.CompositeFilterToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						1, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("CompositeFilterToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("CompositeFilterToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"CompositeFilterTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("CompositeFilterToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.CompositeFilter.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.CompositeActionToolToolboxItem":
					// Add CompositeActionTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.CompositeActionToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						2, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("CompositeActionToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("CompositeActionToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"CompositeActionTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("CompositeActionToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.CompositeAction.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.InnerFilterToolToolboxItem":
					// Add InnerFilterTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.InnerFilterToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						3, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("InnerFilterToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("InnerFilterToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"InnerFilterTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("InnerFilterToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.InnerFilterInstance.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.InnerActionToolToolboxItem":
					// Add InnerActionTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.InnerActionToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						4, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("InnerActionToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("InnerActionToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"InnerActionTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("InnerActionToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.InnerActionInstance.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.FilterFlowToolboxItem":

					// Add FilterFlow connector tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.FilterFlowToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						5, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("FilterFlowToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("FilterFlowToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"FilterFlow", // F1 help keyword for the toolbox item.
						resourceManager.GetString("FilterFlowToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(FilterFlowFilterString)
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.ActionFlowToolboxItem":

					// Add ActionFlow connector tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.ActionFlowToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						6, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("ActionFlowToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("ActionFlowToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"ActionFlow", // F1 help keyword for the toolbox item.
						resourceManager.GetString("ActionFlowToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ActionFlowFilterString)
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.FilterToolToolboxItem":
					// Add FilterTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.FilterToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						7, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("FilterToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("FilterToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"FilterTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("FilterToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.Filter.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.RewActionToolToolboxItem":
					// Add RewActionTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.RewActionToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						8, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("RewActionToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("RewActionToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"RewActionTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("RewActionToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.RewAction.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.IncMechToolToolboxItem":
					// Add IncMechTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.IncMechToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						9, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("IncMechToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("IncMechToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"IncMechTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("IncMechToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.IncMech.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.IncLogicToolToolboxItem":
					// Add IncLogicTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.IncLogicToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						10, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("IncLogicToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("IncLogicToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DefinitionToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DefinitionToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"IncLogicTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("IncLogicToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.IncLogic.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.InstanceDeclarationToolToolboxItem":
					// Add InstanceDeclarationTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.InstanceDeclarationToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						1, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("InstanceDeclarationToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("InstanceDeclarationToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DeclarationToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DeclarationToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"InstanceDeclarationTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("InstanceDeclarationToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.PRINGLInstance.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.InstanceReferenceToolToolboxItem":

					// Add InstanceReferenceTool connector tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.InstanceReferenceToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						2, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("InstanceReferenceToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("InstanceReferenceToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.				
						"at.ac.tuwien.dsg.PRINGL.DeclarationToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DeclarationToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"InstanceReferenceTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("InstanceReferenceToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						null, // Connector toolbox items do not have an underlying data object.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
							new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require), 
							new global::System.ComponentModel.ToolboxItemFilterAttribute(InstanceReferenceToolFilterString)
						});
					break;
				case "at.ac.tuwien.dsg.PRINGL.IncMechInstanceToolToolboxItem":
					// Add IncMechInstanceTool shape tool.
					result = new DslDesign::ModelingToolboxItem(
						"at.ac.tuwien.dsg.PRINGL.IncMechInstanceToolToolboxItem", // Unique identifier (non-localized) for the toolbox item.
						3, // Position relative to other items in the same toolbox tab.
						resourceManager.GetString("IncMechInstanceToolToolboxItem", resourceCulture), // Localized display name for the item.
						(global::System.Drawing.Bitmap)DslDiagrams::ImageHelper.GetImage(resourceManager.GetObject("IncMechInstanceToolToolboxBitmap", resourceCulture)), // Image displayed next to the toolbox item.
						"at.ac.tuwien.dsg.PRINGL.DeclarationToolboxTab", // Unique identifier (non-localized) for the toolbox item tab.
						resourceManager.GetString("DeclarationToolboxTab", resourceCulture), // Localized display name for the toolbox tab.
						"IncMechInstanceTool", // F1 help keyword for the toolbox item.
						resourceManager.GetString("IncMechInstanceToolToolboxTooltip", resourceCulture), // Localized tooltip text for the toolbox item.
						CreateElementToolPrototype(store, global::at.ac.tuwien.dsg.PRINGL.IncMechInstance.DomainClassId), // ElementGroupPrototype (data object) representing model element on the toolbox.
						new global::System.ComponentModel.ToolboxItemFilterAttribute[] { // Collection of ToolboxItemFilterAttribute objects that determine visibility of the toolbox item.
						new global::System.ComponentModel.ToolboxItemFilterAttribute(ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) 
						});
					break;
				default:
					break;
			} // end switch
			
			return result;
		}
		

		/// <summary>
		/// The store toe be used for all the toolbox item creation
		/// </summary>
		protected DslModeling::Store ToolboxStore
		{
			get
			{ 
				if (toolboxStore==null)
				{
					toolboxStore = new DslModeling::Store(this.ServiceProvider);
					EventHandler StoreCleanUp = (o, e) =>
					{
						//Since Store implements IDisposable, we need to dispose it when we're finished
						if (this.toolboxStore != null)
						{
							this.toolboxStore.Dispose();
						}
						this.toolboxStore = null;
					};
					//There is no DomainUnload event for the default AppDomain, so we listen for both ProcessExit and DomainUnload
					AppDomain.CurrentDomain.ProcessExit += new EventHandler(StoreCleanUp);
					AppDomain.CurrentDomain.DomainUnload += new EventHandler(StoreCleanUp);
					
					//load the domain model
					toolboxStore.LoadDomainModels(typeof(global::at.ac.tuwien.dsg.PRINGL.PRINGLDomainModel));
					
				}
				return toolboxStore;
			}
		}
		
		/// <summary>
		/// Given a toolbox item "unique ID" returns the the toolbox item using cached dictionary
		/// </summary>
		/// <param name="itemId">The unique ToolboxItem to retrieve</param>
		private DslDesign::ModelingToolboxItem GetToolboxItem(string itemId)
		{
			DslDesign::ModelingToolboxItem item = null;

			if (!this.toolboxItemCache.TryGetValue(itemId, out item))
			{
				DslModeling::Store store = this.ToolboxStore;
				
				// Open transaction so we can create model elements corresponding to toolbox items.
				using (DslModeling::Transaction t = store.TransactionManager.BeginTransaction("CreateToolboxItems"))
				{
					// Retrieve the specified ToolboxItem from the DSL
					this.toolboxItemCache[itemId] = item = this.GetToolboxItem(itemId, store);
				}
			}

			return item;
		}
		
		/// <summary>
		/// Given a toolbox item "unique ID" and a data format identifier, returns the content of
		/// the data format. 
		/// </summary>
		/// <param name="itemId">The unique ToolboxItem to retrieve data for</param>
		/// <param name="format">The desired format of the resulting data</param>
		public virtual object GetToolboxItemData(string itemId, DataFormats.Format format)
		{
			DslDesign::ModelingToolboxItem item = null;

			global::System.Resources.ResourceManager resourceManager = global::at.ac.tuwien.dsg.PRINGL.PRINGLDomainModel.SingletonResourceManager;
			global::System.Globalization.CultureInfo resourceCulture = global::System.Globalization.CultureInfo.CurrentUICulture;

			System.Windows.Forms.IDataObject tbxDataObj;

			//get the toolbox item
			item = GetToolboxItem(itemId);

			if (item != null)
			{
				ToolboxItemContainer container = new ToolboxItemContainer(item);
				tbxDataObj = container.ToolboxData;

				if (tbxDataObj.GetDataPresent(format.Name))
				{
					return tbxDataObj.GetData(format.Name);
				}
				else 
				{
					string invalidFormatString = resourceManager.GetString("UnsupportedToolboxFormat", resourceCulture);
					throw new InvalidOperationException(string.Format(resourceCulture, invalidFormatString, format.Name));
				}
			}

			string errorFormatString = resourceManager.GetString("UnresolvedToolboxItem", resourceCulture);
			throw new InvalidOperationException(string.Format(resourceCulture, errorFormatString, itemId));
		}		
	}
}
