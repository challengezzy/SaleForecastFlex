package dmdd.dmddas.common.utils
{
	import aks.aksas.utils.UtilFaultEvent;
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.ExceptionConst;
	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	
	import mx.controls.Alert;
	import mx.resources.ResourceManager;
	import mx.rpc.events.FaultEvent;
	import mx.utils.StringUtil;
	
	//	描述		begin
	//	描述		end		
	
	[ResourceBundle("sys_exception")]
	public class UtilExceptionLocale
	{
//		public function UtilExceptionLocale()
//		{
//		}
		
		public static function getExceptionMessageLocaleByFaultEvent( _faultEvent:FaultEvent ):String
		{
			if( _faultEvent == null )
			{
				return null;
			}
			
			var causeMessage:String = UtilFaultEvent.getCauseMessage( _faultEvent );
			
			if( causeMessage == null || StringUtil.trim( causeMessage ) == '' )
			{
				return _faultEvent.toString();
			}
			causeMessage = StringUtil.trim( causeMessage );
			
			return getExceptionMessageLocaleByCauseMessage( causeMessage );

		}
		
		public static function getExceptionMessageLocaleByCauseMessage( _causeMessage:String ):String
		{
			if( _causeMessage == null )
			{
				return null;
			}
			var causeMessage:String = StringUtil.trim( _causeMessage );
			
			
			var causeCode:String = null;
			//	解析出 causeCode	begin
			var idxBegin:int = 0;
			var idxEnd:int = 0;
			if( ClientEnvironment.database_type == BizConst.SYSPARAM_VALUE_DATABASE_ORACLE )
			{
				//	oracle数据库
				
				//	数据库约束类	begin
				//	example: _causeMessage = "ORA-00001: 违反唯一约束条件 (DMDD0924.UNITGROUP_UIDX_CODE)"	
				//	example: _localizedMessage = "ORA-02292: 违反完整约束条件 (DMDD0924.PRODUCT_FK_UNITID) - 已找到子记录\n"	
				idxBegin = causeMessage.indexOf( "." );
				idxEnd = causeMessage.indexOf( ")" );
				if( idxBegin >= 0 && idxEnd >= idxBegin )
				{
					causeCode = causeMessage.substring( idxBegin+1, idxEnd );
				}
				//	数据库约束类	end
				
				//	数据库数据版本控制类	begin
				//	example: _causeMessage = "Row was updated or deleted by another transaction (or unsaved-value mapping was incorrect): [dmdd.dmddjava.dataaccess.dataobject.UnitGroup#21]"	
				if( causeCode == null )
				{
					idxBegin = causeMessage.indexOf( "Row was updated or deleted by another transaction" );
					if( idxBegin >= 0 )
					{
						causeCode = ExceptionConst.EXCEPTION_CAUSECODE_DB_VERSION;
					}
				}
				//	数据库数据版本控制类	end
				
				//	系统设计类或其他未考虑到的	begin
				if( causeCode == null )
				{
					causeCode = causeMessage;
					if( causeCode.indexOf("EXCEPTION_CAUSECODE") >= 0 )
					{
						//	系统设计类的
					}
				}				
				//	系统设计类或其他未考虑到的	end
				
			}
			else if( ClientEnvironment.database_type == BizConst.SYSPARAM_VALUE_DATABASE_SQLSERVER )
			{
				var myPattern:RegExp = / /g;
				//	数据库约束类	begin
				//	example: _causeMessage = "DELETE 语句与 SAME TABLE REFERENCE 约束"PRODUCT_FK_UNITID"冲突" or "不能在具有唯一索引 'OPERATORUSER_UIDX_LOGINNAME' 的对象 'dbo.OPERATORUSER' 中插入重复键的行。"	
				if(causeMessage.indexOf("约束")>0)//第一种情况
				{
					
					causeMessage = causeMessage.replace(myPattern,"");//去掉空格
					idxBegin = causeMessage.indexOf( "约束" )+2;
					idxEnd = causeMessage.indexOf( "冲突" )-1;
					if(idxEnd<0)
					{
						idxEnd=causeMessage.indexOf("'。");
						causeCode = causeMessage.substring( idxBegin+1, idxEnd );
					}
					else
					{
						if( idxBegin >= 0 && idxEnd >= idxBegin )
						{
							causeCode = causeMessage.substring( idxBegin+1, idxEnd );
						}
					}
				}
				else if(causeMessage.indexOf("索引 ")>0)//第二种情况
				{
					causeMessage = causeMessage.replace(myPattern,"");//去掉空格
					idxBegin = causeMessage.indexOf( "索引" )+2;
					idxEnd = causeMessage.indexOf( "的对象" )-1;
					if( idxBegin >= 0 && idxEnd >= idxBegin )
					{
						causeCode = causeMessage.substring( idxBegin+1, idxEnd );
					}
				}
				else if(causeMessage.indexOf("Row was updated or deleted")>0) //对于Row was updated or deleted by another transaction 
				{
					causeCode="EXCEPTION_CAUSECODE_DB_VERSION";
				}
				else if(causeMessage.indexOf("Violation of UNIQUE KEY")>=0)
				{   
					idxBegin = causeMessage.indexOf( "'" )+1;
					idxEnd = causeMessage.indexOf( "'." );
					causeCode=causeMessage.substring( idxBegin, idxEnd );
					 
				}
				else
				{
					causeCode = causeMessage;
				}
				
				//	数据库约束类	end
			}
				//			else if( ClientEnvironment.getSysParamDatabase() == SysConst.DATABSE_PRODUCT_ORACLE )
				//			{
				//				//	其他数据库
				//			}
			else
			{
				causeCode = causeMessage;
			}
			//	解析出 causeCode	end
			
			//	获取locale信息	begin
			var messageLocale:String = ResourceManager.getInstance().getString('sys_exception', causeCode);
			if( messageLocale != null )
			{
				return messageLocale;
			}
			
			return causeCode;
			//	获取locale信息	end			
		}
	}
}