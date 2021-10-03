package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1541:int = -1;
      
      private var var_1249:Boolean;
      
      private var var_1250:String;
      
      private var var_1833:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1833 = String(param1["set-type"]);
         var_1250 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1249 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1541 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1250;
      }
      
      public function get staticId() : int
      {
         return var_1541;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1541 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1249;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1249 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1250 = param1;
      }
      
      public function get setType() : String
      {
         return var_1833;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
