package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1228:int = 4;
      
      public static const const_655:int = 3;
      
      public static const const_744:int = 2;
      
      public static const const_922:int = 1;
       
      
      private var var_2018:String;
      
      private var _disposed:Boolean;
      
      private var var_2020:int;
      
      private var var_2021:Boolean;
      
      private var var_903:String;
      
      private var var_920:PublicRoomData;
      
      private var var_2017:int;
      
      private var _index:int;
      
      private var var_2019:String;
      
      private var _type:int;
      
      private var var_1835:String;
      
      private var var_921:GuestRoomData;
      
      private var var_2022:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2018 = param1.readString();
         var_2022 = param1.readString();
         var_2021 = param1.readInteger() == 1;
         var_2019 = param1.readString();
         var_903 = param1.readString();
         var_2017 = param1.readInteger();
         var_2020 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_922)
         {
            var_1835 = param1.readString();
         }
         else if(_type == const_655)
         {
            var_920 = new PublicRoomData(param1);
         }
         else if(_type == const_744)
         {
            var_921 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2017;
      }
      
      public function get popupCaption() : String
      {
         return var_2018;
      }
      
      public function get userCount() : int
      {
         return var_2020;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2021;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_922)
         {
            return 0;
         }
         if(this.type == const_744)
         {
            return this.var_921.maxUserCount;
         }
         if(this.type == const_655)
         {
            return this.var_920.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2022;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_921 != null)
         {
            this.var_921.dispose();
            this.var_921 = null;
         }
         if(this.var_920 != null)
         {
            this.var_920.dispose();
            this.var_920 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_921;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2019;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_920;
      }
      
      public function get picRef() : String
      {
         return var_903;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1835;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
