package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LagWarningReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2300:int;
      
      private var var_2299:int;
      
      public function LagWarningReportMessageComposer(param1:int, param2:int)
      {
         super();
         var_2300 = param1;
         var_2299 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_2300,var_2299];
      }
   }
}
