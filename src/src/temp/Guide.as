package temp
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	//	import utils.RoleTipsPanel;
	
	public class Guide extends Sprite
	{
//		private var colors:Array = [0x66FF00,153,65433];
		private var colors:Array = [0,0xffffff,65433];
		private var bg:Sprite;
		private var container:Sprite;
		private var path:Sprite;
		private var _tw:uint;
		private var _th:uint;
		private var _pw:uint;
		private var _ph:uint;
		private var _rows:uint;
		private var _cels:uint;
		//		private var tip:RoleTipsPanel;
		public function Guide()
		{
			bg = new Sprite();
			this.addChild(bg);
			container = new Sprite();
			//			container.y = 100;
			this.addChild(container);
			path = new Sprite();
			this.addChild(path);
			//			tip = new RoleTipsPanel("0:0", this);
			//			tip.y = 0;
			//			this.addChild(tip);
			addEventListener(MouseEvent.MOUSE_UP,onMouseOver);
			
		}
		public function update(tw:uint,th:uint,pw:uint,ph:uint):void{
			_tw = tw;_th=th;_pw=pw;_ph=ph;
			_cels = pw/_tw+1;_rows=ph/_th+1;
			var i:uint;
			var tf:TextField;
			with(this.container.graphics){
				clear();
				lineStyle(1,0x00ff00,0.2);
				beginFill(0x0000ff,0.0);
				drawRect(0,0,pw,ph);
				for(i=0;i<_cels;i++){
					moveTo(i*tw,0);
					lineTo(i*tw,ph);
				}
				for(i=0;i<_rows;i++){
					moveTo(0,i*th);
					lineTo(pw,i*th);
				}				
				endFill();
			}
			return;
		}
		public function updateA(arr:Array):void{
			var r:uint = arr.length;
			var c:uint = (arr[0] as Array).length;
			var i:uint;
			var j:uint;
			var or:uint;
			var oc:uint;
			var rs:Array;
			var color:uint;
			with(this.bg.graphics){
				clear();
				for(i=0;i<r;i++){
					rs = arr[i];
					for(j=0;j<c;j++){
						color = colors[rs[j]];
						or = j*_tw;
						oc = i*_th;
						beginFill(color,0.3);	
						drawRect(or,oc,_tw,_th);
						endFill();
					}
				}
			}
			return;
		}
		private function onMouseOver(evt:MouseEvent):void{
			trace(uint(evt.localX/_tw)+":"+uint(evt.localY/_th));
			var r:uint = evt.localX/_tw;
			var c:uint = evt.localY/_th;
			this.graphics.clear();
			this.graphics.beginFill(0xff0000,1);
			this.graphics.drawRect(r*_tw,c*_th,_tw,_th);
			this.graphics.endFill();				
			return;
		}
	}
}