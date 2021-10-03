package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_965:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_965 = new Array();
         var_965.push(param1.length);
         var_965 = var_965.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_965;
      }
   }
}
