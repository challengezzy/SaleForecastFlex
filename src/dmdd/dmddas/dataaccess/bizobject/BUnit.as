package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BUnit")]
		
	public class BUnit
	{
		public function BUnit()
		{
			//TODO: implement function
		}

		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";
		public var name:String = "";
		public var exchangeRate:Number;
		public var isBase:Number = BizConst.GLOBAL_YESNO_NO;
		public var comments:String = "";
		
		public var unitGroup:BUnitGroup;
		
		public function toString():String
		{
			return this.name;			
		}			
			
		public function copyShallow(_obj:BUnit):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.exchangeRate = _obj.exchangeRate;
			this.isBase = _obj.isBase;
			this.comments = _obj.comments;
			
			this.unitGroup = _obj.unitGroup;
		}
		
	}
}