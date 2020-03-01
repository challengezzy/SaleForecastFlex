package dmdd.dmddas.dataaccess.bizobject
{
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BConversionSet")]
	public class BConversionSet
	{
		public function BConversionSet()
		{
		}
		public var id:Number;
		public var product:BProduct;
		public var conversionType:BConversionType;
		public var  version:Number;
	}
}