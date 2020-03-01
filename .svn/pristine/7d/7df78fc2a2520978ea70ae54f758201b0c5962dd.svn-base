package dmdd.dmddas.dataaccess.aidobject
{
	import dmdd.dmddas.dataaccess.bizobject.BBizData;
	
	/**
	 * 存放预测范围内的最终预测、预测期间、屏蔽期间
	 * 需要通过服务端对 ForecastInst 的查询获得
	 */ 
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.aidobject.ABForecastSetting")]		
	public class ABForecastSetting
	{
		public function ABForecastSetting()
		{
		}
		public var forecastInstId:Number;
		public var finalFcBizData:BBizData = null;
		public var fcPeriodNum:int;
		public var fzPeriodNum:int;
		
		public var distributeRefFormula:int;
		public var decomposeFormula:int;//人工预测分解规则
		public var distributeRefBizData:BBizData;
		public var distributeRefPeriodNum:int;

	}
}