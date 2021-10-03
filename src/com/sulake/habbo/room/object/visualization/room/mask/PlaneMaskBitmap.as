package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_48:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_1933:Number = -1.0;
      
      private var var_980:IGraphicAsset = null;
      
      private var var_1931:Number = 1.0;
      
      private var var_1932:Number = -1.0;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         var_1933 = param2;
         _normalMaxX = param3;
         var_1932 = param4;
         var_1931 = param5;
         var_980 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1931;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1933;
      }
      
      public function get normalMinY() : Number
      {
         return var_1932;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_980;
      }
      
      public function dispose() : void
      {
         var_980 = null;
      }
   }
}
