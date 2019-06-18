package Mass_Spec_exp9_fla
{
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   public dynamic class shakebottle_10 extends MovieClip
   {
      
      public function shakebottle_10()
      {
         super();
         addFrameScript(0,frame1,29,frame30);
      }
      
      public var bottle:MovieClip;
      
      function frame1() : *
      {
         bottle.water.gotoAndStop(2);
         bottle.gotoAndStop(40);
      }
      
      function frame30() : *
      {
         bottle.gotoAndStop(45);
         stop();
      }
   }
}
