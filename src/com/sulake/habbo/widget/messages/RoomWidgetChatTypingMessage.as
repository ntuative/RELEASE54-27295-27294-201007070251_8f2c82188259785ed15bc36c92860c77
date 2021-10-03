package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_686:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_539:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_686);
         var_539 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_539;
      }
   }
}
