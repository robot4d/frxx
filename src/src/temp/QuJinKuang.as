package temp
{
	import flash.display.Sprite;
	
	public class QuJinKuang extends Sprite
	{
		public function QuJinKuang()
		{
			this.mouseChildren = false;
			this.mouseEnabled = false;
		}
		public function update(px:int,py:int,pw:uint,ph:uint):void{
			var mx:int = (pw)/2;
			var my:int = (ph)/2;
			pw--;ph--;
			with(this.graphics){
				clear();
				lineStyle(3,0xff0000,1);
				beginFill(0,0);
				moveTo(px,py);
				lineTo(px+pw,py);
				lineTo(px+pw,py+ph);
				lineTo(px,py+ph);
				lineTo(px,py);
				//+				
				lineStyle(1,0xff0000,1);
				moveTo(mx,py);
				lineTo(mx,py+ph);
				moveTo(px,my);
				lineTo(px+pw,my);
				endFill()
			}
			return;
		}
	}
}