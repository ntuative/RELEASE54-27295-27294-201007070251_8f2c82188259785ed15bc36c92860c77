package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_573:int = 0;
      
      private var _data:String = "";
      
      private var var_1612:int = -1;
      
      private var var_37:int = 0;
      
      private var _type:int = 0;
      
      private var var_673:int = 0;
      
      private var var_2527:String = "";
      
      private var var_1905:int = 0;
      
      private var _id:int = 0;
      
      private var var_201:Boolean = false;
      
      private var var_246:int = 0;
      
      private var var_2256:String = null;
      
      private var var_91:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_201)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_201)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_246;
      }
      
      public function get extra() : int
      {
         return var_1612;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_201)
         {
            var_246 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_201)
         {
            var_91 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_201)
         {
            var_1612 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_201)
         {
            var_37 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1905;
      }
      
      public function get staticClass() : String
      {
         return var_2256;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_201)
         {
            var_1905 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_201)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_201)
         {
            var_2256 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_201)
         {
            var_573 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_201)
         {
            var_673 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_201)
         {
            var_92 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_573;
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      public function get sizeY() : int
      {
         return var_673;
      }
   }
}
