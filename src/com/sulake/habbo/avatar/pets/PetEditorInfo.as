package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2309:Boolean;
      
      private var var_1759:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_2309 = Boolean(parseInt(param1.@club));
         var_1759 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_2309;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1759;
      }
   }
}
