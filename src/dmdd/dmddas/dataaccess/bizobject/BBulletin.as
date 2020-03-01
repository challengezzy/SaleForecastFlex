package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBulletin")]	
	public class BBulletin
	{
		public function BBulletin()
		{
			//TODO: implement function
		}

		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var title:String = "";
		public var summary:String = "";
		public var content:String = "";
		public var createTime:Date = null;
		public var modifyTime:Date = null;
		public var publishTime:Date = null;
		public var isPublish:int = BizConst.GLOBAL_YESNO_NO;
		public var comments:String = "";
		public var operatorUser:BOperatorUser = null;
		public var bulletinOperatorUsers:ArrayCollection = new ArrayCollection();		
				
				
		public function copyShallow( _obj:BBulletin ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.title = _obj.title;
			this.summary = _obj.summary;
			this.content = _obj.content;
			this.createTime = _obj.createTime;
			this.modifyTime = _obj.modifyTime;
			this.publishTime = _obj.publishTime;
			this.isPublish = _obj.isPublish;			
			this.comments = _obj.comments;
			
			this.operatorUser = _obj.operatorUser;
		}	
		
		// copyDeep 在编辑的时候使用，
		// 所以要附属集合
		public function copyDeep( _obj:BBulletin ):void
		{
			this.copyShallow( _obj );
			
			// bulletinOperatorUsers
			var k:int;
			this.bulletinOperatorUsers = new ArrayCollection();
			if( _obj.bulletinOperatorUsers != null )
			{
				for(k=0; k<_obj.bulletinOperatorUsers.length; k=k+1)
				{
					var originBulletinOperatorUser:BBulletinOperatorUser = BBulletinOperatorUser(_obj.bulletinOperatorUsers.getItemAt(k));
					var targetBulletinOperatorUser:BBulletinOperatorUser = new BBulletinOperatorUser();

					targetBulletinOperatorUser.version = originBulletinOperatorUser.version;
					targetBulletinOperatorUser.id = originBulletinOperatorUser.id;
					targetBulletinOperatorUser.operatorUser = originBulletinOperatorUser.operatorUser;
					targetBulletinOperatorUser.bulletin = this;
					
					this.bulletinOperatorUsers.addItem( targetBulletinOperatorUser );					
				}
			}						
		}				

	}
}