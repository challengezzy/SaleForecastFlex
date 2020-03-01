package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BDistributionCenter")]
	public class BDistributionCenter
	{
		public function BDistributionCenter()
		{
		}
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var name:String;
		public var code:String;
		public var iscatalog:Number;
		public var isvalid:Number;
		public var dclayer:Number;
		public var parentdcid:Number=SysConst.NULL_NUMERICAL_FIELD;
		public var pathcode:String;
		public var detailaddress:String;
		public var description:String;
		public var comments:String;
		
		public var subDCs:ArrayCollection =null;
		
		public function getParentDcName():String{
			if(parentdcid == 0 || parentdcid == -1)
				return null
			else{
				var dc:BDistributionCenter = ClientEnvironment.dcMap.getValue(parentdcid);
				
				if(dc == null )
					return null;
				else
					return dc.name;
			}
		}
		public function getParentDc():BDistributionCenter{
			if(parentdcid == 0 || parentdcid == -1)
				return null
			else{
				var dc:BDistributionCenter = ClientEnvironment.dcMap.getValue(parentdcid);
				
				if(dc == null )
					return null;
				else
					return dc;
			}
		}
		
		public function copyDeep(_obj:BDistributionCenter):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.iscatalog = _obj.iscatalog;
			this.isvalid = _obj.isvalid;
			this.description = _obj.description;
			this.comments = _obj.comments;
			this.pathcode = _obj.pathcode;
			this.detailaddress = _obj.detailaddress;
			this.detailaddress = _obj.detailaddress;
			this.parentdcid = _obj.parentdcid;
			this.dclayer = _obj.dclayer;
			this.subDCs =new ArrayCollection();
			if(_obj.subDCs!=null && _obj.subDCs.length>0)
			{
				for each(var dc:BDistributionCenter in _obj.subDCs)
				{
					subDCs.addItem(dc);
				}
			}
		}
	}
}