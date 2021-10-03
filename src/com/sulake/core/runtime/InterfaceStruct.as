package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_469:uint;
      
      private var var_1174:IUnknown;
      
      private var var_1453:String;
      
      private var var_1175:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1175 = param1;
         var_1453 = getQualifiedClassName(var_1175);
         var_1174 = param2;
         var_469 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1175;
      }
      
      public function get disposed() : Boolean
      {
         return var_1174 == null;
      }
      
      public function get references() : uint
      {
         return var_469;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_469) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1174;
      }
      
      public function get iis() : String
      {
         return var_1453;
      }
      
      public function reserve() : uint
      {
         return ++var_469;
      }
      
      public function dispose() : void
      {
         var_1175 = null;
         var_1453 = null;
         var_1174 = null;
         var_469 = 0;
      }
   }
}
