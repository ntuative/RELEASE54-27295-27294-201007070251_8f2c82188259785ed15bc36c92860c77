package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1135:int = 0;
      
      private var var_1367:int = 0;
      
      private var var_2156:String = "";
      
      private var var_1134:int = 0;
      
      private var var_2151:String = "";
      
      private var var_2155:int = 0;
      
      private var var_1633:String = "";
      
      private var var_1862:int = 0;
      
      private var var_2152:int = 0;
      
      private var var_2154:String = "";
      
      private var var_2153:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1862 = param1;
         var_2154 = param2;
         var_1633 = param3;
         var_2156 = param4;
         var_2151 = param5;
         if(param6)
         {
            var_1367 = 1;
         }
         else
         {
            var_1367 = 0;
         }
         var_2155 = param7;
         var_2152 = param8;
         var_1134 = param9;
         var_2153 = param10;
         var_1135 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1862,var_2154,var_1633,var_2156,var_2151,var_1367,var_2155,var_2152,var_1134,var_2153,var_1135];
      }
      
      public function dispose() : void
      {
      }
   }
}
