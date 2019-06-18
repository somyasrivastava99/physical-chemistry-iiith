package Magnet_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public dynamic class MainTimeline extends MovieClip
   {
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      public var proton2:MovieClip;
      
      public var proton3:MovieClip;
      
      public var graph_benzeldehyde:MovieClip;
      
      public var starting:SimpleButton;
      
      public var proton4:MovieClip;
      
      public var left_alligned:MovieClip;
      
      public var proton5:MovieClip;
      
      public var graph_ethanol:MovieClip;
      
      public var Evaluate:SimpleButton;
      
      public var proton6:MovieClip;
      
      public var proton7:MovieClip;
      
      public var arrow1:MovieClip;
      
      public var proton8:MovieClip;
      
      public var hide1:MovieClip;
      
      public var arrow2:MovieClip;
      
      public var proton9:MovieClip;
      
      public var tube:MovieClip;
      
      public var arrow3:MovieClip;
      
      public var arrow4:MovieClip;
      
      public var control2:SimpleButton;
      
      public var hide3:MovieClip;
      
      public var hide4:MovieClip;
      
      public var hide5:MovieClip;
      
      public var graph_acetaldehyde:MovieClip;
      
      public var control1:SimpleButton;
      
      public var hide6:MovieClip;
      
      public var solv1:SimpleButton;
      
      public var hide7:MovieClip;
      
      public var solv2:SimpleButton;
      
      public var solv3:SimpleButton;
      
      public var Sample:SimpleButton;
      
      public var graph:MovieClip;
      
      public var proton1:MovieClip;
      
      public var choose:Number;
      
      public var color:Number;
      
      public var temp:Number;
      
      public var sequence:Number;
      
      public function show_sample_options(param1:MouseEvent) : void
      {
         hide1.visible = false;
      }
      
      public function solvent1(param1:MouseEvent) : void
      {
         if(sequence != 5)
         {
            tube.gotoAndStop(4);
            sequence = 1;
            color = 1;
         }
      }
      
      public function solvent2(param1:MouseEvent) : void
      {
         if(sequence != 5)
         {
            tube.gotoAndStop(3);
            sequence = 1;
            color = 2;
         }
      }
      
      public function solvent3(param1:MouseEvent) : void
      {
         if(sequence != 5)
         {
            tube.gotoAndStop(2);
            sequence = 1;
            color = 3;
         }
      }
      
      public function protons_visible(param1:MouseEvent) : void
      {
         if(sequence == 1)
         {
            hide6.visible = false;
            proton1.visible = false;
            proton2.visible = false;
            proton3.visible = false;
            proton4.visible = false;
            proton5.visible = false;
            proton6.visible = false;
            proton7.visible = false;
            proton8.visible = false;
            proton9.visible = false;
            arrow1.visible = true;
            arrow3.visible = true;
            arrow2.visible = true;
            arrow4.visible = true;
            arrow1.gotoAndPlay(1);
            arrow2.gotoAndPlay(1);
            arrow3.gotoAndPlay(1);
            arrow4.gotoAndPlay(1);
            left_alligned.visible = true;
         }
         sequence = 2;
      }
      
      public function graph_visible(param1:MouseEvent) : void
      {
         if(sequence == 2)
         {
            graph.visible = false;
            if(color == 1)
            {
               graph_benzeldehyde.visible = true;
               graph_benzeldehyde.gotoAndPlay(2);
            }
            if(color == 2)
            {
               graph_ethanol.visible = true;
               graph_ethanol.gotoAndPlay(2);
            }
            if(color == 3)
            {
               graph_acetaldehyde.visible = true;
               graph_acetaldehyde.gotoAndPlay(2);
            }
         }
         sequence = 5;
      }
      
      public function moving_tube(param1:MouseEvent) : void
      {
         if(sequence == 1)
         {
            hide3.visible = false;
            hide4.visible = false;
            hide5.visible = false;
            hide7.visible = false;
            while(tube.y < 388)
            {
               tube.y++;
            }
         }
      }
      
      public function gotoPage(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = null;
         var _loc3_:URLRequest = null;
         var _loc4_:URLRequest = null;
         if(color == 3)
         {
            _loc2_ = new URLRequest("plot_acetaldehyde.html");
            navigateToURL(_loc2_);
         }
         if(color == 2)
         {
            _loc3_ = new URLRequest("plot_ethylacetate.html");
            navigateToURL(_loc3_);
         }
         if(color == 1)
         {
            _loc4_ = new URLRequest("plot_benzene.html");
            navigateToURL(_loc4_);
         }
      }
      
      function frame1() : *
      {
         stop();
         tube.gotoAndStop(1);
         graph.gotoAndStop(1);
         graph_benzeldehyde.gotoAndStop(1);
         graph_ethanol.gotoAndStop(1);
         graph_acetaldehyde.gotoAndStop(1);
         graph_benzeldehyde.visible = false;
         graph_ethanol.visible = false;
         graph_acetaldehyde.visible = false;
         arrow1.visible = false;
         arrow3.visible = false;
         arrow2.visible = false;
         arrow4.visible = false;
         left_alligned.visible = false;
         choose = 0;
         color = 0;
         temp = 0;
         sequence = 0;
         Sample.addEventListener(MouseEvent.CLICK,show_sample_options);
         solv1.addEventListener(MouseEvent.CLICK,solvent1);
         solv2.addEventListener(MouseEvent.CLICK,solvent2);
         solv3.addEventListener(MouseEvent.CLICK,solvent3);
         control1.addEventListener(MouseEvent.CLICK,protons_visible);
         control2.addEventListener(MouseEvent.CLICK,graph_visible);
         starting.addEventListener(MouseEvent.CLICK,moving_tube);
         Evaluate.addEventListener(MouseEvent.CLICK,gotoPage);
      }
   }
}
