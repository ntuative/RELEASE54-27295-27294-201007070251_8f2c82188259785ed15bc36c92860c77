package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1964:int;
      
      private var var_1961:int;
      
      private var var_1963:int;
      
      private var _userName:String;
      
      private var var_1962:int;
      
      private var var_1959:int;
      
      private var var_1960:int;
      
      private var _userId:int;
      
      private var var_754:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1959 = param1.readInteger();
         var_1962 = param1.readInteger();
         var_754 = param1.readBoolean();
         var_1963 = param1.readInteger();
         var_1961 = param1.readInteger();
         var_1964 = param1.readInteger();
         var_1960 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1960;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_754;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1962;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1961;
      }
      
      public function get cautionCount() : int
      {
         return var_1964;
      }
      
      public function get cfhCount() : int
      {
         return var_1963;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1959;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
