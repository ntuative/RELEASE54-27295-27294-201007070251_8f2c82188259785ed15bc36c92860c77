package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1346:int = 2;
      
      public static const const_1501:int = 1;
       
      
      private var var_2087:int;
      
      private var var_2088:int;
      
      private var var_1741:Boolean;
      
      private var var_2090:int;
      
      private var var_1246:String;
      
      private var var_2084:Boolean;
      
      private var var_2085:int;
      
      private var var_2089:int;
      
      private var var_2086:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2088;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1741;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2089;
      }
      
      public function get memberPeriods() : int
      {
         return var_2090;
      }
      
      public function get productName() : String
      {
         return var_1246;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2084;
      }
      
      public function get responseType() : int
      {
         return var_2087;
      }
      
      public function get pastClubDays() : int
      {
         return var_2086;
      }
      
      public function get pastVipDays() : int
      {
         return var_2085;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1246 = param1.readString();
         var_2088 = param1.readInteger();
         var_2090 = param1.readInteger();
         var_2089 = param1.readInteger();
         var_2087 = param1.readInteger();
         var_2084 = param1.readBoolean();
         var_1741 = param1.readBoolean();
         var_2086 = param1.readInteger();
         var_2085 = param1.readInteger();
         return true;
      }
   }
}
