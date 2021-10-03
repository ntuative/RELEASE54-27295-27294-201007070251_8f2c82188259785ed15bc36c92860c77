package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      private var var_246:int = 0;
      
      private var var_1769:int = 0;
      
      private var var_2002:Number = 0;
      
      private var var_2001:Number = 0;
      
      private var var_2004:Number = 0;
      
      private var var_2005:Number = 0;
      
      private var var_2003:Boolean = false;
      
      private var var_91:Number = 0;
      
      private var _id:int = 0;
      
      private var var_229:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_229 = [];
         super();
         _id = param1;
         var_91 = param2;
         _y = param3;
         var_92 = param4;
         var_2005 = param5;
         var_246 = param6;
         var_1769 = param7;
         var_2002 = param8;
         var_2001 = param9;
         var_2004 = param10;
         var_2003 = param11;
         var_229 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function get dir() : int
      {
         return var_246;
      }
      
      public function get localZ() : Number
      {
         return var_2005;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2003;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1769;
      }
      
      public function get targetX() : Number
      {
         return var_2002;
      }
      
      public function get targetY() : Number
      {
         return var_2001;
      }
      
      public function get targetZ() : Number
      {
         return var_2004;
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      public function get actions() : Array
      {
         return var_229.slice();
      }
   }
}
