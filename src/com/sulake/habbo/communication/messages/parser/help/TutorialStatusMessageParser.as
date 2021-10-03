package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1085:Boolean;
      
      private var var_1083:Boolean;
      
      private var var_1084:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1085;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1083;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1084 = param1.readBoolean();
         var_1083 = param1.readBoolean();
         var_1085 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1084;
      }
      
      public function flush() : Boolean
      {
         var_1084 = false;
         var_1083 = false;
         var_1085 = false;
         return true;
      }
   }
}
