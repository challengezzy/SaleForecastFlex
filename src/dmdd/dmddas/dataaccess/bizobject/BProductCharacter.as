package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BProductCharacter")]
		
	public class BProductCharacter
	{
		public function BProductCharacter()
		{
			//TODO: implement function
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";
		public var name:String = "";
		public var type:String = "";
		public var isCatalog:Number;
		public var description:String = "";
		public var comments:String = "";
		public var productCharacterLayer:BProductCharacterLayer = null;
		public var parentProductCharacter:BProductCharacter = null;
		public var subProductCharacters:ArrayCollection = null;
		public var productProCharacters:ArrayCollection = null;
		public var pathCode:String="";
		
		public function toString():String
		{
			return this.name;			
		}
		
		//    copyShallow 和 copyDeep 只在编辑 ProductCharacter 使用，不处理 subProductCharacters 和 productProCharacters
		public function copyShallow( _obj:BProductCharacter ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.type = _obj.type;
			this.isCatalog = _obj.isCatalog;
			this.description = _obj.description;
			this.comments = _obj.comments;
			this.pathCode = _obj.pathCode;
			this.productCharacterLayer = _obj.productCharacterLayer;
			this.parentProductCharacter = _obj.parentProductCharacter;			
		}	
		
		public function copyDeep( _obj:BProductCharacter ):void
		{
			this.copyShallow( _obj );
			// ProductCharacter 不处理其 不处理 subProductCharacters 和 productProCharacters ，这里不做copy
		}	
		
	}
}