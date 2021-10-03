package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1411:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_968:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1411 = param1;
         var_968 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_968;
      }
      
      public function get identifier() : IID
      {
         return var_1411;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1411 = null;
            while(false)
            {
               var_968.pop();
            }
            var_968 = null;
         }
      }
   }
}
