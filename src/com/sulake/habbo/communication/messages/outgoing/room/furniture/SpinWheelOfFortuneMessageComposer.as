package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SpinWheelOfFortuneMessageComposer implements IMessageComposer
   {
       
      
      private var var_168:int;
      
      public function SpinWheelOfFortuneMessageComposer(param1:int)
      {
         super();
         var_168 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_168];
      }
   }
}
