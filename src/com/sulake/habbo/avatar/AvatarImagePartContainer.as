package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2276:int;
      
      private var var_2275:String;
      
      private var var_1638:IActionDefinition;
      
      private var var_2274:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2271:String;
      
      private var var_2273:String;
      
      private var var_1896:Boolean;
      
      private var var_2272:ColorTransform;
      
      private var var_1967:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2275 = param1;
         var_2271 = param2;
         var_2276 = param3;
         _color = param4;
         _frames = param5;
         var_1638 = param6;
         var_1896 = param7;
         var_1967 = param8;
         var_2273 = param9;
         var_2274 = param10;
         var_2272 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1896;
      }
      
      public function get partType() : String
      {
         return var_2271;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1967;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2274;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2276;
      }
      
      public function get flippedPartType() : String
      {
         return var_2273;
      }
      
      public function get bodyPartId() : String
      {
         return var_2275;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1638;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2272;
      }
   }
}
