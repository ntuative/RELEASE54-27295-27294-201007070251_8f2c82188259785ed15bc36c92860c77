package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1973:int;
      
      private var var_1971:String;
      
      private var var_1765:int;
      
      private var _disposed:Boolean;
      
      private var var_1972:int;
      
      private var var_1764:String;
      
      private var var_1222:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1764 = param1.readString();
         var_1973 = param1.readInteger();
         var_1765 = param1.readInteger();
         var_1971 = param1.readString();
         var_1972 = param1.readInteger();
         var_1222 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1972;
      }
      
      public function get worldId() : int
      {
         return var_1765;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1764;
      }
      
      public function get unitPort() : int
      {
         return var_1973;
      }
      
      public function get castLibs() : String
      {
         return var_1971;
      }
      
      public function get nodeId() : int
      {
         return var_1222;
      }
   }
}
