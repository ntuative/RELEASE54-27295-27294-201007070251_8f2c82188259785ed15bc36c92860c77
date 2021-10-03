package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1108:Array;
      
      private var var_2029:Boolean;
      
      private var var_1107:Array;
      
      private var var_2031:Boolean;
      
      private var var_2034:Boolean;
      
      private var var_2028:Boolean;
      
      private var var_166:Array;
      
      private var var_2033:Boolean;
      
      private var var_2032:Boolean;
      
      private var var_927:Array;
      
      private var var_2035:Boolean;
      
      private var var_2030:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_166 = [];
         var_1107 = [];
         var_1108 = [];
         var_927 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               var_166.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1107.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_927.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2033 = param1.readBoolean();
         var_2028 = param1.readBoolean();
         var_2031 = param1.readBoolean();
         var_2034 = param1.readBoolean();
         var_2030 = param1.readBoolean();
         var_2032 = param1.readBoolean();
         var_2029 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1108.push(param1.readString());
            _loc4_++;
         }
         var_2035 = param1.readBoolean();
      }
      
      public function get banPermission() : Boolean
      {
         return var_2030;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1107;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2031;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2029;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2033;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_1107 = null;
         var_1108 = null;
         var_166 = null;
         for each(_loc1_ in var_927)
         {
            _loc1_.dispose();
         }
         var_927 = null;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return var_1108;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2032;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2034;
      }
      
      public function get offenceCategories() : Array
      {
         return var_927;
      }
      
      public function get issues() : Array
      {
         return var_166;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2035;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2028;
      }
   }
}
