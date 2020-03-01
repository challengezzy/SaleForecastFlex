package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BPriceData")]	
	public class BPriceData
	{
		public function BPriceData()
		{
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var period:int;
		public var standardPrice:Number;	//	double	比较时注意不能用==
		public var realPrice:Number;		//	double	比较时注意不能用==
		public var comments:String = "";
		public var product:BProduct;
		public var organization:BOrganization;
			
		[Transient]	
		public var realPriceBak:Number;		
		//	用于界面上调整数据保存时，与当前值比较；这个值在查询到界面后，界面对其初始化
		
		[Transient]	
		public var standardPriceBak:Number;		
		//	用于界面上进行单位转换换算时，会引起误差。而standardPrice是不会在界面上修改的，所以调整后保存时，要用这个bak数据帮助恢复成原值；这个值在查询到界面后，界面对其初始化

		[Transient]
		public var isChecked:Boolean = false;	
		
		
		
		public function copyShallow( _obj:BPriceData ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.period = _obj.period;
			this.standardPrice = _obj.standardPrice;
			this.realPrice = _obj.realPrice;
			this.comments = _obj.comments;
			
			this.product = _obj.product;
			this.organization = _obj.organization;
			
			this.realPriceBak = _obj.realPriceBak;
			this.standardPriceBak = _obj.standardPriceBak;
		}
		
		public function copyDeep( _obj:BPriceData ):void
		{
			this.copyShallow( _obj );			
		}		
		
		
		public function exchangeUnit( _exchangeRate_old:Number, _exchangeRate_new:Number ):void
		{
			if( isNaN( _exchangeRate_old ) || isNaN( _exchangeRate_new ) )
			{
				return;	
			}
				
			var value_byBase_standardPrice:Number;
			value_byBase_standardPrice = this.standardPrice / _exchangeRate_old;	//	先换算成整数基准值
			this.standardPrice = value_byBase_standardPrice * 1.0 * _exchangeRate_new ;
			
			var value_byBase_realPrice:Number;
			value_byBase_realPrice = this.realPrice / _exchangeRate_old;	//	先换算成整数基准值
			this.realPrice = value_byBase_realPrice * 1.0 * _exchangeRate_new ;			
		}
		
	}
}