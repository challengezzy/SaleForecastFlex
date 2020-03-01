package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;

	//	描述	begin
	//	描述	end
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastRunTask")]	
	public class BForecastRunTask
	{
		public function BForecastRunTask()
		{
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var compilePeriod:int;		
		public var description:String = "";
		public var creator:String = "";
		public var createdTime:Date;
		public var status:int;
		public var finishTime:Date;
		public var comments:String = "";
				
		public var forecastRunTaskItems:ArrayCollection = new ArrayCollection();
		
		public function addForecastRunTaskItem( _forecastRunTaskItem:BForecastRunTaskItem ):void
		{
			if( _forecastRunTaskItem == null )
			{
				return;
			}
			
			if( this.forecastRunTaskItems == null )
			{
				this.forecastRunTaskItems = new ArrayCollection();
			}
			
			_forecastRunTaskItem.forecastRunTask = this;
			this.forecastRunTaskItems.addItem( _forecastRunTaskItem );
			
		}
	}
}