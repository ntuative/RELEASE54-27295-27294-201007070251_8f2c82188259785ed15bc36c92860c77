package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1743:int;
      
      private var var_1767:int;
      
      private var var_1851:int;
      
      private var var_1850:int;
      
      private var _nutrition:int;
      
      private var var_1220:int;
      
      private var var_1853:int;
      
      private var var_1854:int;
      
      private var _energy:int;
      
      private var var_1849:int;
      
      private var var_1852:int;
      
      private var _ownerName:String;
      
      private var var_1848:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1743;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1767 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1743 = param1;
      }
      
      public function get petId() : int
      {
         return var_1220;
      }
      
      public function get experienceMax() : int
      {
         return var_1854;
      }
      
      public function get nutritionMax() : int
      {
         return var_1850;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1853 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1848;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1220 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1852;
      }
      
      public function get respect() : int
      {
         return var_1767;
      }
      
      public function get levelMax() : int
      {
         return var_1853;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1854 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1851 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1850 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1848 = param1;
      }
      
      public function get experience() : int
      {
         return var_1851;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1852 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1849 = param1;
      }
      
      public function get age() : int
      {
         return var_1849;
      }
   }
}
