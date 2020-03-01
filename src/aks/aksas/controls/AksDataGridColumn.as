package aks.aksas.controls
{
	import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
	import mx.controls.dataGridClasses.DataGridColumn;

	//	描述		begin
	//	描述		end	
	public class AksDataGridColumn
	{
		public function AksDataGridColumn()
		{
			//TODO: implement function
		}
		
		public var aksVisible:Boolean = true;
		public var aksHeaderText:String = "";
		public var aksDataField:String = "";
		public var objColumn:Object = null;
		
		public function setObjColumn( _objColumn:Object ):void
		{
			if( _objColumn == null )
			{
				return;
			}
			
			if( _objColumn is DataGridColumn )
			{
				var dataGridColumn:DataGridColumn = DataGridColumn(_objColumn);
		
				this.objColumn = dataGridColumn;
				
				this.aksVisible = dataGridColumn.visible;
				this.aksHeaderText = dataGridColumn.headerText;
				this.aksDataField = dataGridColumn.dataField;
			}
			else if( _objColumn is AdvancedDataGridColumn )
			{
				var advancedDataGridColumn:AdvancedDataGridColumn = AdvancedDataGridColumn(_objColumn);
				
				this.objColumn = advancedDataGridColumn;
				
				this.aksVisible = advancedDataGridColumn.visible;
				this.aksHeaderText = advancedDataGridColumn.headerText;
				this.aksDataField = advancedDataGridColumn.dataField;				
			}
		}
		
		public function updObjColumn():void
		{
			if( this.objColumn == null )
			{
				return;
			}
			
			if( this.objColumn is DataGridColumn )
			{
				var dataGridColumn:DataGridColumn = DataGridColumn(this.objColumn);
				
				dataGridColumn.visible = this.aksVisible;
				dataGridColumn.headerText = this.aksHeaderText;
				dataGridColumn.dataField = this.aksDataField;
			}
			else if( this.objColumn is AdvancedDataGridColumn )
			{
				var advancedDataGridColumn:AdvancedDataGridColumn = AdvancedDataGridColumn(this.objColumn);
								
				advancedDataGridColumn.visible = this.aksVisible;
				advancedDataGridColumn.headerText = this.aksHeaderText;
				advancedDataGridColumn.dataField = this.aksDataField;			
			}
		}			

	}
}