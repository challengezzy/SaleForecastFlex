package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastMakeLogHfcItem")]		
	public class BForecastMakeLogHfcItem
	{
		public function BForecastMakeLogHfcItem()
		{
			//TODO: implement function
		}

		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var period:int;
		public var oldValue:Number;
		public var newValue:Number;
		public var changeratio:Number;
		public var description:String = "";
		public var comments:String = "";
		public var forecastMakeLog:BForecastMakeLog = null;
		public var product:BProduct = null;
		public var productCharacter:BProductCharacter = null;
		public var organization:BOrganization = null;
		public var organizationCharacter:BOrganizationCharacter = null;		
		public var bizData:BBizData = null;
				
		// BForecastMakeLogHfcItem 不会被编辑，这里不写copy方法
		
		public function exchangeUnit( _exchangeRate_old:Number, _exchangeRate_new:Number ):void
		{
			if( isNaN( _exchangeRate_old ) || isNaN( _exchangeRate_new ) )
			{
				return;	
			}
			
			var value_byBase:Number;
			
			value_byBase = Math.round( this.oldValue * _exchangeRate_old );	//	先换算成整数基准值
			this.oldValue = value_byBase * 1.0 / _exchangeRate_new;
			
			value_byBase = Math.round( this.newValue * _exchangeRate_old );	//	先换算成整数基准值
			this.newValue = value_byBase * 1.0 / _exchangeRate_new;			
			if(oldValue==0)
				changeratio=100;
			else
			{
				var value_ratio:Number=(newValue-oldValue)/oldValue*100;
				value_ratio = Number(value_ratio.toFixed(2));
				changeratio=value_ratio;
			}
		}		
		
		public function copyDeep( _sourceObj:BForecastMakeLogHfcItem ):void
		{
			if( _sourceObj == null )
			{
				return;
			}
			
			this.version = _sourceObj.version;
			this.id = _sourceObj.id;
			this.period = _sourceObj.period;
			this.oldValue = _sourceObj.oldValue;
			this.newValue = _sourceObj.newValue;
			this.description = _sourceObj.description;
			this.comments = _sourceObj.comments;
			this.forecastMakeLog = _sourceObj.forecastMakeLog;
			this.changeratio=_sourceObj.changeratio;
			this.product = _sourceObj.product;
			this.productCharacter = _sourceObj.productCharacter;
			this.organization = _sourceObj.organization;
			this.organizationCharacter = _sourceObj.organizationCharacter;
			this.bizData = _sourceObj.bizData;
			
		}		
		

	}
}