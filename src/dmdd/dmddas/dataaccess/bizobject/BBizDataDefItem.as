package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBizDataDefItem")]
		
	public class BBizDataDefItem
	{
		public function BBizDataDefItem()
		{
			//TODO: implement function
		}

		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var indicator:String = "";
		public var bizData:BBizData;
		
		
		public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItem = BBizDataDefItem(_obj);
			this.version = sourceObj.version;
			this.id = sourceObj.id;
			this.indicator = sourceObj.indicator;
			this.bizData = sourceObj.bizData;
			// bizData 不处理 
		}
		
		public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBizDataDefItem = BBizDataDefItem(_obj);
			this.copyShallow( sourceObj );
		}

	}
}