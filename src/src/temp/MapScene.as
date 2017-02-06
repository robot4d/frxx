package temp
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class MapScene extends Sprite
	{
		public var guide:Guide;
		public var pathCanvas:PathCanvas;
		public var quJinKuang:QuJinKuang;		
		public function MapScene()
		{
			guide = new Guide();
			this.addChild(guide);
			pathCanvas = new PathCanvas();
			this.addChild(pathCanvas);
			quJinKuang = new QuJinKuang();
			this.addChild(quJinKuang);
		}
		public function updateQuJinKuang(px:int,py:int,pw:uint,ph:uint):void{
			quJinKuang.update(px,py,pw,ph);			
			return;
		}
		public function updateGuide(tw:uint,th:uint,pw:uint,ph:uint):void{
			guide.update(tw,th,pw,ph);
			return;
			
		}
		public function updateGuideA(arr:Array):void{
			guide.updateA(arr);
			return;
		}
	}
}