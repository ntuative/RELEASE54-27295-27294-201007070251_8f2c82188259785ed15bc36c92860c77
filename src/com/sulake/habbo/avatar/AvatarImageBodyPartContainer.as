package com.sulake.habbo.avatar
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class AvatarImageBodyPartContainer
   {
       
      
      private var var_421:Point;
      
      private var _image:BitmapData;
      
      private var _offset:Point;
      
      public function AvatarImageBodyPartContainer(param1:BitmapData, param2:Point)
      {
         _offset = new Point(0,0);
         super();
         _image = param1;
         var_421 = param2;
         cleanPoints();
      }
      
      public function set offset(param1:Point) : void
      {
         _offset = param1;
         cleanPoints();
      }
      
      private function cleanPoints() : void
      {
         var_421.x = int(var_421.x);
         var_421.y = int(var_421.y);
         _offset.x = int(_offset.x);
         _offset.y = int(_offset.y);
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get regPoint() : Point
      {
         return var_421.add(_offset);
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function setRegPoint(param1:Point) : void
      {
         var_421 = param1;
         cleanPoints();
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
         }
         _image = null;
         var_421 = null;
         _offset = null;
      }
   }
}
