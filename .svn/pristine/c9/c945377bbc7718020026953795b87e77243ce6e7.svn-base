package aks.aksas.controls
{

	import flash.display.InteractiveObject;
	import flash.events.ContextMenuEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.profiler.showRedrawRegions;
	import flash.ui.ContextMenu;
	import flash.ui.ContextMenuItem;
	
	import mx.controls.AdvancedDataGrid;
	import mx.controls.Alert;
	import mx.controls.dataGridClasses.DataGridHeader;
	import mx.events.CollectionEvent;
	import mx.events.ListEvent;
	import mx.resources.ResourceManager;

	[ResourceBundle("aks")]
	public class AksLockAdvancedDataGridObject
	{
		private var datagrid:AdvancedDataGrid = null;
		private var lastRollOverIndex:Number = 0;
		
		public function AksLockAdvancedDataGridObject(_datagrid:AdvancedDataGrid)
		{
			this.datagrid = _datagrid;
			//datagrid.addEventListener(MouseEvent.MOUSE_MOVE,gridMouseMoveHandler);
			datagrid.addEventListener(ListEvent.ITEM_ROLL_OVER,gridListRollOver);
			datagrid.addEventListener(CollectionEvent.COLLECTION_CHANGE,dataProviderChange);
			var menu:ContextMenu = new ContextMenu();
			menu.hideBuiltInItems();
			var menuItem1:ContextMenuItem = new ContextMenuItem(ResourceManager.getInstance().getString("aks", "lock"));
			var menuItem2:ContextMenuItem = new ContextMenuItem(ResourceManager.getInstance().getString("aks", "unlock"));
			menuItem1.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, locakColumn);
			menuItem2.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, unLocakColumn);
			menu.customItems = [menuItem1, menuItem2];
			
			this.datagrid.contextMenu= menu
		}
		
		/**
		 * 数据源发生变动时取消掉锁定
		 * */
		private function dataProviderChange(event:CollectionEvent):void
		{
			this.datagrid.lockedColumnCount=0;
		}
		
		/**
		 * 获取当前列编号
		 **/
		private function gridListRollOver(event:ListEvent):void
		{
			lastRollOverIndex = event.columnIndex;
		}
		/**
		 * 设置menu
		 * */
		
		
		private function locakColumn(event:ContextMenuEvent):void
		{
			if(lastRollOverIndex>0)
			{
				this.datagrid.lockedColumnCount=lastRollOverIndex+1;
			}
		}
		
		private function unLocakColumn(event:ContextMenuEvent):void
		{
			this.datagrid.lockedColumnCount=0;
		}
	}
}