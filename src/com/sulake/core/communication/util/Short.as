package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_830:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_830 = new ByteArray();
         var_830.writeShort(param1);
         var_830.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_830.position = 0;
         if(false)
         {
            _loc1_ = var_830.readShort();
            var_830.position = 0;
         }
         return _loc1_;
      }
   }
}
