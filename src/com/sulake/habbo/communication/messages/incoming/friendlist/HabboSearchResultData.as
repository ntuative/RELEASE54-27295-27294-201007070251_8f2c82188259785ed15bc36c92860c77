package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2479:Boolean;
      
      private var var_2477:int;
      
      private var var_2480:Boolean;
      
      private var var_1568:String;
      
      private var var_1381:String;
      
      private var var_2327:int;
      
      private var var_1992:String;
      
      private var var_2478:String;
      
      private var var_1993:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2327 = param1.readInteger();
         this.var_1568 = param1.readString();
         this.var_1992 = param1.readString();
         this.var_2479 = param1.readBoolean();
         this.var_2480 = param1.readBoolean();
         param1.readString();
         this.var_2477 = param1.readInteger();
         this.var_1993 = param1.readString();
         this.var_2478 = param1.readString();
         this.var_1381 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1381;
      }
      
      public function get avatarName() : String
      {
         return this.var_1568;
      }
      
      public function get avatarId() : int
      {
         return this.var_2327;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2479;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2478;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1993;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2480;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1992;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2477;
      }
   }
}
