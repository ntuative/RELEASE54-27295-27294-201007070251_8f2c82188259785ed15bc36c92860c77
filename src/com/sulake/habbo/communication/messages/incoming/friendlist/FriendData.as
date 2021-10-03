package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_420:String;
      
      private var var_1382:String;
      
      private var var_1379:String;
      
      private var var_1380:int;
      
      private var var_626:int;
      
      private var var_1381:String;
      
      private var _name:String;
      
      private var var_1378:Boolean;
      
      private var var_754:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_626 = param1.readInteger();
         this.var_754 = param1.readBoolean();
         this.var_1378 = param1.readBoolean();
         this.var_420 = param1.readString();
         this.var_1380 = param1.readInteger();
         this.var_1379 = param1.readString();
         this.var_1382 = param1.readString();
         this.var_1381 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_626;
      }
      
      public function get realName() : String
      {
         return var_1381;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1379;
      }
      
      public function get categoryId() : int
      {
         return var_1380;
      }
      
      public function get online() : Boolean
      {
         return var_754;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1378;
      }
      
      public function get lastAccess() : String
      {
         return var_1382;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_420;
      }
   }
}
