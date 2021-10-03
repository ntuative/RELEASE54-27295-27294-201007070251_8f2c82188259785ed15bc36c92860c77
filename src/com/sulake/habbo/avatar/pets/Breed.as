package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_626:String;
      
      private var _id:int;
      
      private var var_1895:String = "";
      
      private var var_1894:int;
      
      private var var_1897:String;
      
      private var var_1896:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1894 = parseInt(param1.@pattern);
         var_626 = String(param1.@gender);
         var_1896 = Boolean(parseInt(param1.@colorable));
         var_1895 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1895;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1896;
      }
      
      public function get gender() : String
      {
         return var_626;
      }
      
      public function get patternId() : int
      {
         return var_1894;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1897;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1897 = param1;
      }
   }
}
