package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1403:BigInteger;
      
      private var var_682:BigInteger;
      
      private var var_1647:BigInteger;
      
      private var var_1648:BigInteger;
      
      private var var_2219:BigInteger;
      
      private var var_2218:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1403 = param1;
         var_1647 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2219.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1648 = new BigInteger();
         var_1648.fromRadix(param1,param2);
         var_2219 = var_1648.modPow(var_682,var_1403);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2218.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1403.toString() + ",generator: " + var_1647.toString() + ",secret: " + param1);
         var_682 = new BigInteger();
         var_682.fromRadix(param1,param2);
         var_2218 = var_1647.modPow(var_682,var_1403);
         return true;
      }
   }
}
