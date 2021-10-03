package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1222:int;
      
      private var var_1517:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1222 = param1;
         var_1517 = param2;
         Logger.log("READ NODE: " + var_1222 + ", " + var_1517);
      }
      
      public function get nodeName() : String
      {
         return var_1517;
      }
      
      public function get nodeId() : int
      {
         return var_1222;
      }
   }
}
