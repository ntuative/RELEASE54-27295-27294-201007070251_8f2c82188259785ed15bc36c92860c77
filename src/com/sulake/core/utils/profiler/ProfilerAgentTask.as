package com.sulake.core.utils.profiler
{
   import com.sulake.core.runtime.IDisposable;
   import flash.utils.getTimer;
   
   public class ProfilerAgentTask implements IDisposable
   {
       
      
      private var var_628:Boolean;
      
      private var var_1300:int;
      
      private var var_1958:uint;
      
      private var var_904:uint;
      
      private var var_1299:Number;
      
      private var var_1566:int;
      
      private var var_343:String;
      
      private var _name:String;
      
      private var _disposed:Boolean = false;
      
      private var _children:Array;
      
      public function ProfilerAgentTask(param1:String, param2:String = "")
      {
         super();
         _name = param1;
         var_904 = 0;
         var_1299 = 0;
         var_628 = false;
         _children = new Array();
         var_343 = param2;
      }
      
      public function removeSubTask(param1:ProfilerAgentTask) : ProfilerAgentTask
      {
         var _loc2_:int = _children.indexOf(param1);
         if(_loc2_ > -1)
         {
            _children.splice(_loc2_,1);
         }
         return param1;
      }
      
      public function stop() : void
      {
         if(!var_628)
         {
            throw new Error("Component profiler task \"" + _name + "\" not running!");
         }
         var_1566 = getTimer() - var_1958;
         ++var_904;
         var_1300 += var_1566;
         var_1299 = var_1300 / var_904;
         var_628 = false;
      }
      
      public function get total() : int
      {
         return var_1300;
      }
      
      public function get latest() : int
      {
         return var_1566;
      }
      
      public function getSubTaskAt(param1:uint) : ProfilerAgentTask
      {
         return _children[param1] as ProfilerAgentTask;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set caption(param1:String) : void
      {
         var_343 = caption;
      }
      
      public function getSubTaskByName(param1:String) : ProfilerAgentTask
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _children[_loc3_++] as ProfilerAgentTask;
            if(_loc4_.name == param1)
            {
               return _loc4_;
            }
         }
         return null;
      }
      
      public function get numSubTasks() : uint
      {
         return _children.length;
      }
      
      public function get average() : Number
      {
         return var_1299;
      }
      
      public function start() : void
      {
         if(var_628)
         {
            throw new Error("Component profiler task \"" + _name + "\" already running!");
         }
         var_1958 = getTimer();
         var_628 = true;
      }
      
      public function get rounds() : uint
      {
         return var_904;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get caption() : String
      {
         return var_343;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
         }
      }
      
      public function addSubTask(param1:ProfilerAgentTask) : void
      {
         if(getSubTaskByName(param1.name) != null)
         {
            throw new Error("Component profiler task with name \"" + param1.name + "\" already exists!");
         }
         _children.push(param1);
      }
      
      public function get running() : Boolean
      {
         return var_628;
      }
   }
}
