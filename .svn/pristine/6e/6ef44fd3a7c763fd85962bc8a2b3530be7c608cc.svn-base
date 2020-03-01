package aks.aksas.utils
{
	import aks.aksmx.controls.AksWindowWait;
	
	import flash.display.DisplayObject;
	
	import mx.collections.ArrayCollection;
	import mx.managers.PopUpManager;
	
	//	描述		begin
	//	描述		end	
		
	public class UtilUi
	{
//		public function UtilUi()
//		{
//			//TODO: implement function
//		}

		//	窗口关闭方式		begin
		public static var WINDOW_CLOSEWAY_OK:int = 0;
		public static var WINDOW_CLOSEWAY_CANCEL:int = 1;
		//	窗口关闭方式		end
		
		//	AU窗口用途		begin
		public static var AUWINDOW_USE_NEW:int = 0;
		public static var AUWINDOW_USE_UPD:int = 1;
		//	AU窗口用途		end
		
		
		
		//	稍候窗口		begin
		private static var aksWindowWait:AksWindowWait = null;

		public static function pubFun4PopWaitWindow( _parent:DisplayObject ):void
		{
			if( aksWindowWait == null )
			{
				aksWindowWait = AksWindowWait(PopUpManager.createPopUp(_parent, AksWindowWait, true));
			}
			else
			{
				PopUpManager.addPopUp( aksWindowWait, _parent, true );
			}			
		}

		public static function pubFun4PopWaitWindowAndConent( _parent:DisplayObject , _str:String):void
		{
			if( aksWindowWait == null )
			{
				aksWindowWait = AksWindowWait(PopUpManager.createPopUp(_parent, AksWindowWait, true));
			}
			else
			{
				PopUpManager.addPopUp( aksWindowWait, _parent, true );
			}	
			aksWindowWait.pubFun4SetWaitConent(_str);
		}
		
		public static function pubFun4RemoveWaitWindow():void
		{
			if( aksWindowWait != null )
			{
				PopUpManager.removePopUp( aksWindowWait );
				aksWindowWait = null;					
			}					
		}
		//	稍候窗口		end				

	}
}