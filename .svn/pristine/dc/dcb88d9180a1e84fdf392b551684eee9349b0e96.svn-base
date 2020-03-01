package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMLWmaItem")]	
	public class BForecastModelMLWmaItem
	{
		public function BForecastModelMLWmaItem()
		{
			//TODO: implement function
		}

		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var periodSeqNo:int = 2;
		public var coefficient:Number;
		public var forecastModelMLWma:BForecastModelMLWma;	
		
		
		public function copyShallow(_obj:BForecastModelMLWmaItem):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.periodSeqNo = _obj.periodSeqNo;
			this.coefficient = _obj.coefficient;
			this.forecastModelMLWma = _obj.forecastModelMLWma;
		}			

	}
}