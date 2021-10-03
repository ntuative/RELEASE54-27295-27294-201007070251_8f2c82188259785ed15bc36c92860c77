package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_285:uint = 1;
      
      public static const const_509:uint = 0;
      
      public static const const_1054:uint = 8;
      
      public static const const_270:uint = 4;
      
      public static const const_451:uint = 2;
       
      
      private var var_438:uint;
      
      private var var_1873:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1872:uint;
      
      private var var_103:Rectangle;
      
      private var var_691:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_103 = param3;
         _color = param4;
         var_438 = param5;
         var_1873 = param6;
         var_1872 = param7;
         var_691 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1873;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_438;
      }
      
      public function get scaleV() : uint
      {
         return var_1872;
      }
      
      public function get tags() : Array
      {
         return var_691;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_103 = null;
         var_691 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_103;
      }
   }
}
