package aks.aksas.utils
{
	import mx.collections.IViewCursor;
	import mx.controls.AdvancedDataGrid;
	import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;

	public class UtilExportDataGird
	{
		public function UtilExportDataGird()
		{
		}
		
		public static function exportCSV4AdvancedDataGrid(dg:AdvancedDataGrid, csvSeparator:String="\t", lineSeparator:String="\n"):String
		{
			var data:String = "";
			var columns:Array = dg.columns;
			var columnCount:int = columns.length;
			var column:AdvancedDataGridColumn;
			var header:String = "";
			var headerGenerated:Boolean = false;
			var dataProvider:Object = dg.dataProvider;
			var rowCount:int = dataProvider.length;
			var dp:Object = null;
			
			var cursor:IViewCursor = dataProvider.createCursor ();
			var j:int = 0;
			
			//loop through rows
			while (!cursor.afterLast)
			{
				var obj:Object = null;
				obj = cursor.current;
				
				//loop through all columns for the row
				for(var k:int = 1; k < columnCount; k++)
				{
					column = columns[k];
					//Exclude column data which is invisible (hidden)
					if(!column.visible)
					{
						continue;
					}
					
					data += "\""+ column.itemToLabel(obj)+ "\"";
					if(k < (columnCount -1))
					{
						data += csvSeparator;
					}
					//generate header of CSV, only if it's not genereted yet
					if (!headerGenerated)
					{
						header += "\"" + column.headerText + "\"";
						if (k < columnCount - 1)
						{
							header += csvSeparator;
						}
					}
					
					
				}
				
				headerGenerated = true;
				if (j < (rowCount - 1))
				{
					data += lineSeparator;
				}
				j++;
				cursor.moveNext ();
			}
			
			//set references to null:
			dataProvider = null;
			columns = null;
			column = null;
			
			return (header + "\r\n" + data);
		} 	
	}
}