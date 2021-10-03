package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1666:int = 2;
      
      public static const const_1324:int = 4;
      
      public static const const_1354:int = 1;
      
      public static const const_1205:int = 3;
       
      
      private var var_1140:int = 0;
      
      private var var_959:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1140;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1140 = param1.readInteger();
         if(var_1140 == 3)
         {
            var_959 = param1.readString();
         }
         else
         {
            var_959 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1140 = 0;
         var_959 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_959;
      }
   }
}
