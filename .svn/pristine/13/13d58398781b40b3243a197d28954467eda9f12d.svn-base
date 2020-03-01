package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BOrganizationLayer")]
		
	public class BOrganizationLayer
	{
		public function BOrganizationLayer()
		{
			//TODO: implement function
		}

		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var value:Number;
		public var description:String = "";
		public var comments:String = "";
		
		public function toString():String
		{
			return "" + this.value + "/" + this.description;
		}
		
		public function copyShallow(_obj:BOrganizationLayer):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.value = _obj.value;
			this.description = _obj.description;
			this.comments = _obj.comments;
		}
		
		public function copyDeep(_obj:BOrganizationLayer):void
		{
			this.copyShallow( _obj );
		}		
		
	}
}