package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItemForecastAssessment")]	
	
	public class BBizDataDefItemForecastAssessment extends BBizDataDefItem
	{
		public function BBizDataDefItemForecastAssessment()
		{
			super();
			this.indicator = BizConst.BIZDATADEFITEM_INDICATOR_FORECASTASSESSMENT;
		}
		
		public var itemBizData:BBizData;
		public var startPeriod:int;
		public var endPeriod:int;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemForecastAssessment = BBizDataDefItemForecastAssessment(_obj);
			super.copyShallow( sourceObj );
			this.startPeriod = sourceObj.startPeriod;
			this.endPeriod  = sourceObj.endPeriod;
			this.itemBizData = sourceObj.itemBizData;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItemForecastAssessment = BBizDataDefItemForecastAssessment(_obj);
			super.copyDeep( sourceObj );
			this.copyShallow( sourceObj );
		}	
		
	}
}