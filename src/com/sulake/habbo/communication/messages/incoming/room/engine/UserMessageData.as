package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1395:String = "F";
      
      public static const const_1059:String = "M";
       
      
      private var var_91:Number = 0;
      
      private var var_420:String = "";
      
      private var var_1861:int = 0;
      
      private var var_1859:String = "";
      
      private var var_1855:int = 0;
      
      private var var_1860:int = 0;
      
      private var var_1857:String = "";
      
      private var var_660:String = "";
      
      private var _id:int = 0;
      
      private var var_201:Boolean = false;
      
      private var var_246:int = 0;
      
      private var var_1856:String = "";
      
      private var _name:String = "";
      
      private var var_1858:int = 0;
      
      private var _y:Number = 0;
      
      private var var_92:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_92;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_246;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_201)
         {
            var_246 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_201)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1861;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_201)
         {
            var_1855 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1856;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_201)
         {
            var_1857 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_201)
         {
            var_1856 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_201)
         {
            var_1860 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_201)
         {
            var_420 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_201)
         {
            var_1861 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_201)
         {
            var_660 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1855;
      }
      
      public function get groupID() : String
      {
         return var_1857;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_201)
         {
            var_1858 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_201)
         {
            var_1859 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_201 = true;
      }
      
      public function get sex() : String
      {
         return var_660;
      }
      
      public function get figure() : String
      {
         return var_420;
      }
      
      public function get webID() : int
      {
         return var_1858;
      }
      
      public function get custom() : String
      {
         return var_1859;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_201)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_201)
         {
            var_92 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_201)
         {
            var_91 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_91;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1860;
      }
   }
}
