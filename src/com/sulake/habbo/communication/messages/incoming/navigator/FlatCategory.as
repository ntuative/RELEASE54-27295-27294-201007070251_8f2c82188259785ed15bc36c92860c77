package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_359:Boolean;
      
      private var var_1222:int;
      
      private var var_1517:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1222 = param1.readInteger();
         var_1517 = param1.readString();
         var_359 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_359;
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
