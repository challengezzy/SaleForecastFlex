package dmdd.dmddas.dataaccess.aidobject
{
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.aidobject.ABImProductCharacter")]		
	public class ABImProductCharacter
	{
		public function ABImProductCharacter()
		{
		}
		
		public var parentCode:String = null;
		public var layerValue:String = null;
		
		public var code:String = null;
		public var name:String = null;
		public var type:String = null;
		public var isCatalog:String = null;
		public var description:String = null;
		public var comments:String = null;
		
		public var importResult:String = null;
		
	}
}