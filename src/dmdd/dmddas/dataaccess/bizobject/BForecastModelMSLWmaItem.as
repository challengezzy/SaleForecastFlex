package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMSLWmaItem")]	
	public class BForecastModelMSLWmaItem
	{
		public function BForecastModelMSLWmaItem()
		{
			//TODO: implement function
		}

		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var periodSeqNo:int = 2;
		public var coefficient:Number;
		public var forecastModelMSLWma:BForecastModelMSLWma;	
		
		
		public function copyShallow(_obj:BForecastModelMSLWmaItem):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.periodSeqNo = _obj.periodSeqNo;
			this.coefficient = _obj.coefficient;
			this.forecastModelMSLWma = _obj.forecastModelMSLWma;
		}			

	}
}