package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1916:Number = 0.0;
      
      private var var_1917:Number = 0.0;
      
      private var var_1914:Number = 0.0;
      
      private var var_1915:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1917 = param1;
         var_1914 = param2;
         var_1916 = param3;
         var_1915 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1917;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1916;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1914;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1915;
      }
   }
}
