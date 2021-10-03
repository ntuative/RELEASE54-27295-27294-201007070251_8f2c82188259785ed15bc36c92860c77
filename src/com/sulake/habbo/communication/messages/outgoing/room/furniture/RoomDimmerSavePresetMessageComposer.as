package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1784:int;
      
      private var var_1782:int;
      
      private var var_1785:Boolean;
      
      private var var_1783:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1786:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1782 = param1;
         var_1784 = param2;
         var_1783 = param3;
         var_1786 = param4;
         var_1785 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1782,var_1784,var_1783,var_1786,int(var_1785)];
      }
      
      public function dispose() : void
      {
      }
   }
}
