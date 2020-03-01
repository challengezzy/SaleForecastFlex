package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.collections.ArrayCollection;
	import mx.states.Transition;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BOperatorUser")]	
	
	public class BOperatorUser
	{
		public function BOperatorUser()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;	
		public var loginName:String = "";
		public var password:String = "";
		public var userName:String = "";
		public var creatorName:String = "";
		public var createdTime:Date;
		public var userExpiryTime:Date;
		public var pwdExpiryTime:Date;
		public var isValid:int;
		public var position:String = "";
		public var officeAddress:String = "";
		public var homeAddress:String = "";
		public var telNo:String = "";
		public var mobileNo:String = "";
		public var email:String = "";
		public var isOnline:int;
		public var loginTime:Date;
		public var logoutTime:Date;
		public var loginTimes:Number;
		public var comments:String = "";
		public var superiorOperatorUser:BOperatorUser;
		public var operatorUserProOrgs:ArrayCollection = new ArrayCollection();
		public var operatorUserBizDatas:ArrayCollection = new ArrayCollection();
		public var operatorUserFunPermissions:ArrayCollection = new ArrayCollection();
		public var subOperatorUsers:ArrayCollection = new ArrayCollection();
		public var isGetDetail:Boolean = false;
		
		public function copyShallow( _obj:BOperatorUser, _blNew:Boolean ):void
		{
			if( _blNew == false )
			{
				this.version = _obj.version;
				this.id = _obj.id;				
			}

			this.loginName = _obj.loginName;
			this.password = _obj.password;
			this.userName = _obj.userName;
			this.creatorName = _obj.creatorName;
			this.createdTime = _obj.createdTime;
			this.userExpiryTime = _obj.userExpiryTime;
			this.pwdExpiryTime = _obj.pwdExpiryTime;
			this.isValid = _obj.isValid;
			this.position = _obj.position;
			this.officeAddress = _obj.officeAddress;
			this.homeAddress = _obj.homeAddress;
			this.telNo = _obj.telNo;
			this.mobileNo = _obj.mobileNo;
			this.email = _obj.email;
			this.isOnline = _obj.isOnline;
			this.loginTime = _obj.loginTime;
			this.logoutTime = _obj.logoutTime;
			this.loginTimes = _obj.loginTimes;
			this.comments = _obj.comments;
		}
		
		public function toString():String
		{
			return this.userName;
		}
		
		// copyDeep 在编辑BOperatorUser的时候使用，所以要拷贝各引用属性和附属集合(operatorUserFunPermissions、operatorUserBizDatas、operatorUserProOrgs)，
		// 但附属集合中subOperatorUsers不处理		
		public function copyDeep( _obj:BOperatorUser, _blNew:Boolean ):void
		{
			this.copyShallow( _obj, _blNew );
			
			this.superiorOperatorUser = _obj.superiorOperatorUser;
			
			// operatorUserFunPermissions
			this.operatorUserFunPermissions = new ArrayCollection();
			if( _obj.operatorUserFunPermissions != null )
			{
				for(var i:int=0; i<_obj.operatorUserFunPermissions.length; i=i+1)
				{
					var originOperatorUserFunPermission:BOperatorUserFunPermission = BOperatorUserFunPermission(_obj.operatorUserFunPermissions.getItemAt(i));
					var operatorUserFunPermission:BOperatorUserFunPermission = new BOperatorUserFunPermission();

					if( _blNew == false )
					{
						operatorUserFunPermission.version = originOperatorUserFunPermission.version;
						operatorUserFunPermission.id = originOperatorUserFunPermission.id;						
					}
					operatorUserFunPermission.funPermission = originOperatorUserFunPermission.funPermission;
					operatorUserFunPermission.operatorUser = this;
					
					this.operatorUserFunPermissions.addItem( operatorUserFunPermission );					
				}
			}	
			
			// operatorUserBizDatas
			this.operatorUserBizDatas = new ArrayCollection();
			if( _obj.operatorUserBizDatas != null )
			{
				for(var j:int=0; j<_obj.operatorUserBizDatas.length; j=j+1)
				{
					var originOperatorUserBizData:BOperatorUserBizData = BOperatorUserBizData(_obj.operatorUserBizDatas.getItemAt(j));
					var operatorUserBizData:BOperatorUserBizData = new BOperatorUserBizData();

					if( _blNew == false )
					{
						operatorUserBizData.version = originOperatorUserBizData.version;
						operatorUserBizData.id = originOperatorUserBizData.id;						
					}
					operatorUserBizData.bizData = originOperatorUserBizData.bizData;
					operatorUserBizData.isManaging = originOperatorUserBizData.isManaging;
					operatorUserBizData.bl4IsManaging = originOperatorUserBizData.bl4IsManaging;
					operatorUserBizData.operatorUser = this;
					
					this.operatorUserBizDatas.addItem( operatorUserBizData );					
				}
			}
			
			// operatorUserProOrgs
			this.operatorUserProOrgs = new ArrayCollection();
			if( _obj.operatorUserProOrgs != null )
			{
				for(var k:int=0; k<_obj.operatorUserProOrgs.length; k=k+1)
				{
					var originOperatorUserProOrg:BOperatorUserProOrg = BOperatorUserProOrg(_obj.operatorUserProOrgs.getItemAt(k));
					var operatorUserProOrg:BOperatorUserProOrg = new BOperatorUserProOrg();

					if( _blNew == false )
					{
						operatorUserProOrg.version = originOperatorUserProOrg.version;
						operatorUserProOrg.id = originOperatorUserProOrg.id;
					}
					operatorUserProOrg.organization = originOperatorUserProOrg.organization;
					operatorUserProOrg.product = originOperatorUserProOrg.product;
					operatorUserProOrg.operatorUser = this;
					
					this.operatorUserProOrgs.addItem( operatorUserProOrg );					
				}
			}									
		}		
		
	}
}