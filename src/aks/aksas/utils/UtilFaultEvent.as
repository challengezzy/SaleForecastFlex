package aks.aksas.utils
{
	import mx.messaging.events.ChannelFaultEvent;
	import mx.messaging.messages.ErrorMessage;
	import mx.rpc.events.FaultEvent;

	//	描述		begin
	//	描述		end	
	
	public class UtilFaultEvent
	{
//		public function UtilFaultEvent()
//		{
//		}
		
		public static function getCauseMessage( _faultEvent:FaultEvent ):String
		{
			if( _faultEvent != null && _faultEvent.message != null && ErrorMessage(_faultEvent.message).rootCause != null )
			{
				if( ErrorMessage(_faultEvent.message).rootCause is ChannelFaultEvent )
				{
					return ChannelFaultEvent(ErrorMessage(_faultEvent.message).rootCause).faultDetail;
				}
				
				if( ErrorMessage(_faultEvent.message).rootCause.cause != null )
				{
					return ErrorMessage(_faultEvent.message).rootCause.cause.message;
				}
				
				return ErrorMessage(_faultEvent.message).rootCause.message;
			}
			
			return _faultEvent.toString();
		}
	}
}