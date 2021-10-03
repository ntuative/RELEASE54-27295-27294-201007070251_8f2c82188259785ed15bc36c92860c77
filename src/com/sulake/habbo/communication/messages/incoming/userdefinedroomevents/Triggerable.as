package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_1267:String;
      
      private var var_1717:String;
      
      private var var_2095:int;
      
      private var var_2094:int;
      
      private var var_311:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         super();
         var_311 = param1.readInteger();
         var_1267 = param1.readString();
         var_1717 = param1.readString();
         var_2094 = param1.readInteger();
         var_2095 = param1.readInteger();
      }
      
      public function get params() : String
      {
         return var_1717;
      }
      
      public function get cooldownPeriod() : int
      {
         return var_2095;
      }
      
      public function get performCount() : int
      {
         return var_2094;
      }
      
      public function get stuffId() : int
      {
         return var_311;
      }
      
      public function get stuffName() : String
      {
         return var_1267;
      }
   }
}
