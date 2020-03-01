package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastInst")]	
	public class BForecastInst
	{
		public function BForecastInst()
		{
			//TODO: implement function
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		// 数据字典值初始化为 -1 
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";
		public var name:String = "";
		public var fcPeriodNum:int = BizConst.GLOBAL_NULL_NULL;
		public var nextFcPeriodNum:int = BizConst.GLOBAL_NULL_NULL;
		public var fzPeriodNum:int = BizConst.GLOBAL_NULL_NULL;
		public var nextFzPeriodNum:int = BizConst.GLOBAL_NULL_NULL;		
		public var distributeRefFormula:int = BizConst.FORECAST_DISTRIBUTEREFFORMULA_AVERAGE;
		public var decomposeFormula:int = BizConst.FORECAST_DISTRIBUTEREFFORMULA_AVERAGE;
		public var distributeRefPeriodNum:int = 1;
		public var distributeRefBizData:BBizData = null;
		public var isValid:int = BizConst.GLOBAL_NULL_NULL;
		public var nextIsValid:int = BizConst.GLOBAL_NULL_NULL;
		public var errorThreshold:Number = 0.0;
		public var isRunned:int = BizConst.GLOBAL_YESNO_NO;
		public var mappingFcModelRunTime:Date;
		public var comments:String = "";
		public var finalFcBizData:BBizData;
		public var nextFinalFcBizData:BBizData;				
		public var runProductLayer:BProductLayer;
		public var runOrganizationLayer:BOrganizationLayer;
		public var mappingFcModel:BForecastModelM;
		public var forecastInstProOrgs:ArrayCollection = new ArrayCollection();
		public var forecastInstNextProOrgs:ArrayCollection = new ArrayCollection();
		
		public var isGetDetail:Boolean = false;
		// UI 辅助属性
		public var isChecked:Boolean = false;
		
		public function toString():String
		{
			return this.name;
		}

		public function copyShallow( _obj:BForecastInst ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.fcPeriodNum = _obj.fcPeriodNum;
			this.nextFcPeriodNum = _obj.nextFcPeriodNum;
			this.fzPeriodNum = _obj.fzPeriodNum;
			this.nextFzPeriodNum = _obj.nextFzPeriodNum;
			this.isValid = _obj.isValid;
			this.nextIsValid = _obj.nextIsValid;
			this.distributeRefFormula = _obj.distributeRefFormula;
			this.decomposeFormula = _obj.decomposeFormula;
			this.distributeRefPeriodNum = _obj.distributeRefPeriodNum;
			this.errorThreshold = _obj.errorThreshold;
			this.isRunned = _obj.isRunned;
			this.mappingFcModelRunTime = _obj.mappingFcModelRunTime;
			this.comments = _obj.comments;
			
			this.finalFcBizData = _obj.finalFcBizData;
			this.nextFinalFcBizData = _obj.nextFinalFcBizData;			
			this.runProductLayer = _obj.runProductLayer;
			this.runOrganizationLayer = _obj.runOrganizationLayer;
			this.distributeRefBizData = _obj.distributeRefBizData;
			this.mappingFcModel = _obj.mappingFcModel;			
		}	
		
		// copyDeep 在编辑BForecastInst的时候使用，
		// 所以要拷贝各引用属性和附属集合(runProductLayer、runOrganizationLayer、mappingFcModel、analyzeFcModel、finalFcBizData、nextFinalFcBizData、forecastInstProOrgs、forecastInstNextProOrgs)，
		public function copyDeep( _obj:BForecastInst ):void
		{
			this.copyShallow( _obj );
						
			// forecastInstProOrgs
			var k:int;
			this.forecastInstProOrgs = new ArrayCollection();
			if( _obj.forecastInstProOrgs != null )
			{
				for(k=0; k<_obj.forecastInstProOrgs.length; k=k+1)
				{
					var originForecastInstProOrg:BForecastInstProOrg = BForecastInstProOrg(_obj.forecastInstProOrgs.getItemAt(k));
					var forecastInstProOrg:BForecastInstProOrg = new BForecastInstProOrg();

					forecastInstProOrg.version = originForecastInstProOrg.version;
					forecastInstProOrg.id = originForecastInstProOrg.id;
					forecastInstProOrg.product = originForecastInstProOrg.product;					
					forecastInstProOrg.organization = originForecastInstProOrg.organization;
					forecastInstProOrg.forecastInst = this;
					
					this.forecastInstProOrgs.addItem( forecastInstProOrg );					
				}
			}		
			
			// forecastInstNextProOrgs
			this.forecastInstNextProOrgs = new ArrayCollection();
			if( _obj.forecastInstNextProOrgs != null )
			{
				for(k=0; k<_obj.forecastInstNextProOrgs.length; k=k+1)
				{
					var originForecastInstNextProOrg:BForecastInstNextProOrg = BForecastInstNextProOrg(_obj.forecastInstNextProOrgs.getItemAt(k));
					var forecastInstNextProOrg:BForecastInstNextProOrg = new BForecastInstNextProOrg();

					forecastInstNextProOrg.version = originForecastInstNextProOrg.version;
					forecastInstNextProOrg.id = originForecastInstNextProOrg.id;
					forecastInstNextProOrg.product = originForecastInstNextProOrg.product;					
					forecastInstNextProOrg.organization = originForecastInstNextProOrg.organization;
					forecastInstNextProOrg.forecastInst = this;
					
					this.forecastInstNextProOrgs.addItem( forecastInstNextProOrg );					
				}
			}					
		}				

	}
}