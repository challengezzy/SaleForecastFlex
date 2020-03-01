package dmdd.dmddas.common.utils
{
	import flash.events.KeyboardEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.AdvancedDataGrid;
	import mx.controls.DataGrid;

	public class UtilDataGridKeyBoardEvent
	{
		public function UtilDataGridKeyBoardEvent()
		{
			
		}
		//ctrl+A全选   for AdvancedDataGrid
		public static function onAdvancedDataGridCtrlA(event:KeyboardEvent):void
		{
			var ad:AdvancedDataGrid= event.currentTarget as AdvancedDataGrid;
			if(ad.allowMultipleSelection==false)
				return ;
			if(event.ctrlKey==true)
			{
				if(event.keyCode==65)
				{	
					var arrData:ArrayCollection = ad.dataProvider as ArrayCollection;
					var arrSelected:Array = new Array();
					for(var i:int=0;i<arrData.length;i++)
						arrSelected.push(i);
					ad.selectedIndices=arrSelected;
				}
			}
		}
		
		//ctrl+A全选   for DataGrid
		public static function onDataGridCtrlA(event:KeyboardEvent):void
		{
			var ad:DataGrid= event.currentTarget as DataGrid;
			if(ad.allowMultipleSelection==false)
				return ;
			if(event.ctrlKey==true)
			{
				if(event.keyCode==65)
				{					
					var arrData:ArrayCollection = ad.dataProvider as ArrayCollection;
					var arrSelected:Array = new Array();
					for(var i:int=0;i<arrData.length;i++)
						arrSelected.push(i);
					ad.selectedIndices=arrSelected;
				}
			}
		}
		
	}
}