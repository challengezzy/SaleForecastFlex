package dmdd.dmddas.dataaccess.aidobject
{
	import dmdd.dmddas.common.constant.SysConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.aidobject.ABUiRowDataProDCDetail")]
	public class ABUiRowDataProDCDetail
	{
		public function ABUiRowDataProDCDetail()
		{
		}
		
		public var period:Number = SysConst.PERIOD_NULL;
		public var sellIn:Number = NaN;
		public var sellOut:Number = NaN;
		public var termEnd:Number = NaN;
		public var termBegin:Number = NaN;
		public var stockDay:Number = NaN;
	}
}