package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_92:Number = 0;
      
      private var _data:String = "";
      
      private var var_1612:int = 0;
      
      private var var_37:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2093:Boolean = false;
      
      private var var_2527:String = "";
      
      private var _id:int = 0;
      
      private var var_201:Boolean = false;
      
      private var var_246:String = "";
      
      private var var_2091:int = 0;
      
      private var var_2092:int = 0;
      
      private var var_1921:int = 0;
      
      private var var_1923:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2093 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_201)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2093;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_201)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_246;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_201)
         {
            var_1921 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_201)
         {
            var_2091 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_201)
         {
            var_2092 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_201)
         {
            var_246 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_201)
         {
            var_1923 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_201)
         {
            var_37 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1921;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_201)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2091;
      }
      
      public function get wallY() : Number
      {
         return var_2092;
      }
      
      public function get localY() : Number
      {
         return var_1923;
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_201)
         {
            var_92 = param1;
         }
      }
   }
}
