package com.sulake.habbo.communication.messages.incoming.room.furniture
{
   public class RoomDimmerPresetsMessageData
   {
       
      
      private var _color:uint = 0;
      
      private var var_201:Boolean = false;
      
      private var var_1361:uint = 0;
      
      private var _type:int = 0;
      
      private var _id:int = 0;
      
      public function RoomDimmerPresetsMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_201)
         {
            _type = param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(!var_201)
         {
            _color = param1;
         }
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function set light(param1:int) : void
      {
         if(!var_201)
         {
            var_1361 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function get light() : int
      {
         return var_1361;
      }
   }
}
