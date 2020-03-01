package aks.aksas.controls
{
	import flash.display.InteractiveObject;
	import flash.events.ContextMenuEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.profiler.showRedrawRegions;
	import flash.ui.ContextMenu;
	import flash.ui.ContextMenuItem;
	
	import mx.controls.Alert;
	import mx.controls.DataGrid;
	import mx.controls.dataGridClasses.DataGridHeader;
	import mx.events.CollectionEvent;
	import mx.events.ListEvent;
	import mx.resources.ResourceManager;
	
	[ResourceBundle("aks")]
	public class AksLockDataGridObject
	{
		private var datagrid:DataGrid = null;
		private var lastRollOverIndex:Number = 0;
		private var linkageObject:AksLockDataGridObject = null;//用来联动操作，如果不赋值则为独立的所动功能
		
		public function AksLockDataGridObject(_datagrid:DataGrid)
		{
			this.datagrid = _datagrid;
			datagrid.addEventListener(MouseEvent.MOUSE_MOVE,gridMouseMoveHandler);
			datagrid.addEventListener(ListEvent.ITEM_ROLL_OVER,gridListRollOver);
			datagrid.addEventListener(CollectionEvent.COLLECTION_CHANGE,dataProviderChange);
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
		private function gridMouseMoveHandler(event:MouseEvent):void
		{
			if (event.target.parent && event.target.parent is DataGridHeader)
			{
				showMenu(event.target as InteractiveObject);
			}	
		}
		
		private function showMenu(target:InteractiveObject):void
		{			
			var menu:ContextMenu = new ContextMenu();
			menu.hideBuiltInItems();
			var menuItem1:ContextMenuItem = new ContextMenuItem(ResourceManager.getInstance().getString("aks", "lock"));
			var menuItem2:ContextMenuItem = new ContextMenuItem(ResourceManager.getInstance().getString("aks", "unlock"));
			menuItem1.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, function():void{locakColumn(target);});
			menuItem2.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,  function():void{unLocakColumn(target);});
			menu.customItems = [menuItem1, menuItem2];
			target.contextMenu = menu;
		}
	
		private function locakColumn(target:InteractiveObject):void
		{
			if(lastRollOverIndex>0)
			{
				this.datagrid.lockedColumnCount=lastRollOverIndex+1;
				if(linkageObject!=null)
				{
					linkageObject.setLockedCloumnCount(lastRollOverIndex+1);
				}
			}
		}
		
		private function unLocakColumn(target:InteractiveObject):void
		{
			this.datagrid.lockedColumnCount=0;
		}
		
		public function setLockedCloumnCount( _num:Number):void
		{
			if(_num>0)
			{
				this.datagrid.lockedColumnCount=_num;
			}
		}
		
		public function setLinkageObject(_linkageObject:AksLockDataGridObject):void
		{
			this.linkageObject = _linkageObject;
		}
	}
}