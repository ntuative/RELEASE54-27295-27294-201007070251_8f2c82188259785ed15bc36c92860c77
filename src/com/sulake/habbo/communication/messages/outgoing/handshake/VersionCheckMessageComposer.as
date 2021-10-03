package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2046:String;
      
      private var var_1466:String;
      
      private var var_2047:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2047 = param1;
         var_1466 = param2;
         var_2046 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2047,var_1466,var_2046];
      }
      
      public function dispose() : void
      {
      }
   }
}
