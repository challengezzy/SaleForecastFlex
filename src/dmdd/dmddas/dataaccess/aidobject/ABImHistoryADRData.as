package dmdd.dmddas.dataaccess.aidobject
{
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.aidobject.ABImHistoryADRData")]	
	public class ABImHistoryADRData
	{
		public function ABImHistoryADRData()
		{
		}
		public var productCode:String = null;
		public var organizationCode:String = null;
		public var importResult:String = null;
		public var period:int ;
		public var value:Number = NaN;
		public var comments:String ;
		
		
		public function exchangeUnit( _exchangeRate_old:Number, _exchangeRate_new:Number ):void
		{
			if( isNaN( _exchangeRate_old ) || isNaN( _exchangeRate_new ) )
			{
				return;	
			}

			var value_byBase:Number = Math.round( this.value * _exchangeRate_old );	//	先换算成整数基准值				
			this.value =  value_byBase * 1.0 / _exchangeRate_new ;
			
		}		
		
		
		public function copyDeep( _sourceObj:ABImHistoryADRData ):void
		{
			if( _sourceObj == null )
			{
				return;
			}
			this.productCode = _sourceObj.productCode;
			this.organizationCode = _sourceObj.organizationCode;
			this.period = _sourceObj.period;			
			this.importResult = _sourceObj.importResult;
			this.value = _sourceObj.value;
			this.comments = _sourceObj.comments;
		}
	}
}