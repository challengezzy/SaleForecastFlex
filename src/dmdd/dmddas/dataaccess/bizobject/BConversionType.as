package dmdd.dmddas.dataaccess.bizobject
{
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BConversionType")]
	public class BConversionType
	{
		public function BConversionType()
		{
		}
		
		public var id:Number;
		
		public var code:String;
		
		public var name:String;
		
		public var proportion:Number;
		
		public var version:Number;
		
		public var unitGroup:BUnitGroup;
		
		public function toString():String
		{
			return this.name;			
		}
	}
	
}