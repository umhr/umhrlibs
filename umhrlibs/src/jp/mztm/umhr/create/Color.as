package jp.mztm.umhr.create
{
	import flash.geom.ColorTransform;
	
	/**
	 * https://ja.wikipedia.org/wiki/HSV%E8%89%B2%E7%A9%BA%E9%96%93
	 * setHue、setSaturationも作る
	 * setGrayscaleグレースケール化も対応
	 * 色の平均値？
	 * ポップな色5色がほしい→arrayで返す
	 * ↓
	 * getVariation(色数、開始色=0xFFFFFFFF、hue方向？明るさ方向？彩度方向？知覚的？)
	 * HUE固定のgetHUEVariationでいいんじゃない？開始色はコンストラクタで渡してという処理が良い？だからstaticでは無い？
	 * getHUEVariation(色数、is知覚的=true):Array
	 * 
	 * ColorはあくまでもC#のクローンにして、RGB,ARGBクラスを作る？
	 * 
	 * ...
	 * @author umhr
	 */
	public class Color
	{
		static public const WHITE:uint = 0xFFFFFFFF;
		static public const SNOW:uint = 0xFFFFFAFA;
		static public const GHOST_WHITE:uint = 0xFFF8F8FF;
		static public const MINT_CREAM:uint = 0xFFF5FFFA;
		static public const AZURE:uint = 0xFFF0FFFF;
		static public const IVORY:uint = 0xFFFFFFF0;
		static public const FLORAL_WHITE:uint = 0xFFFFFAF0;
		static public const ALICE_BLUE:uint = 0xFFF0F8FF;
		static public const LAVENDER_BLUSH:uint = 0xFFFFF0F5;
		static public const SEA_SHELL:uint = 0xFFFFF5EE;
		static public const WHITE_SMOKE:uint = 0xFFF5F5F5;
		static public const HONEYDEW:uint = 0xFFF0FFF0;
		static public const LIGHT_CYAN:uint = 0xFFE0FFFF;
		static public const LIGHT_YELLOW:uint = 0xFFFFFFE0;
		static public const OLD_LACE:uint = 0xFFFDF5E6;
		static public const CORNSILK:uint = 0xFFFFF8DC;
		static public const LINEN:uint = 0xFFFAF0E6;
		static public const LEMON_CHIFFON:uint = 0xFFFFFACD;
		static public const LIGHT_GOLDENROD_YELLOW:uint = 0xFFFAFAD2;
		static public const LAVENDER:uint = 0xFFE6E6FA;
		static public const BEIGE:uint = 0xFFF5F5DC;
		static public const MISTY_ROSE:uint = 0xFFFFE4E1;
		static public const PAPAYA_WHIP:uint = 0xFFFFEFD5;
		static public const ANTIQUE_WHITE:uint = 0xFFFAEBD7;
		static public const BLANCHED_ALMOND:uint = 0xFFFFEBCD;
		static public const BISQUE:uint = 0xFFFFE4C4;
		static public const MOCCASIN:uint = 0xFFFFE4B5;
		static public const GAINSBORO:uint = 0xFFDCDCDC;
		static public const PEACH_PUFF:uint = 0xFFFFDAB9;
		static public const PALE_TURQUOISE:uint = 0xFFAFEEEE;
		static public const NAVAJO_WHITE:uint = 0xFFFFDEAD;
		static public const PINK:uint = 0xFFFFC0CB;
		static public const WHEAT:uint = 0xFFF5DEB3;
		static public const PALE_GOLDENROD:uint = 0xFFEEE8AA;
		static public const LIGHT_GRAY:uint = 0xFFD3D3D3;
		static public const LIGHT_PINK:uint = 0xFFFFB6C1;
		static public const POWDER_BLUE:uint = 0xFFB0E0E6;
		static public const THISTLE:uint = 0xFFD8BFD8;
		static public const LIGHT_BLUE:uint = 0xFFADD8E6;
		static public const KHAKI:uint = 0xFFF0E68C;
		static public const VIOLET:uint = 0xFFEE82EE;
		static public const PLUM:uint = 0xFFDDA0DD;
		static public const AQUAMARINE:uint = 0xFF7FFFD4;
		static public const LIGHT_STEEL_BLUE:uint = 0xFFB0C4DE;
		static public const LIGHT_SKY_BLUE:uint = 0xFF87CEFA;
		static public const SILVER:uint = 0xFFC0C0C0;
		static public const SKY_BLUE:uint = 0xFF87CEEB;
		static public const PALE_GREEN:uint = 0xFF98FB98;
		static public const ORCHID:uint = 0xFFDA70D6;
		static public const BURLY_WOOD:uint = 0xFFDEB887;
		static public const HOT_PINK:uint = 0xFFFF69B4;
		static public const LIGHT_SALMON:uint = 0xFFFFA07A;
		static public const TAN:uint = 0xFFD2B48C;
		static public const LIGHT_GREEN:uint = 0xFF90EE90;
		static public const CYAN:uint = 0xFF00FFFF;
		static public const MAGENTA:uint = 0xFFFF00FF;
		static public const FUCHSIA:uint = 0xFFFF00FF;
		static public const AQUA:uint = 0xFF00FFFF;
		static public const YELLOW:uint = 0xFFFFFF00;
		static public const DARK_GRAY:uint = 0xFFA9A9A9;
		static public const DARK_SALMON:uint = 0xFFE9967A;
		static public const SANDY_BROWN:uint = 0xFFF4A460;
		static public const LIGHT_CORAL:uint = 0xFFF08080;
		static public const TURQUOISE:uint = 0xFF40E0D0;
		static public const SALMON:uint = 0xFFFA8072;
		static public const CORNFLOWER_BLUE:uint = 0xFF6495ED;
		static public const MEDIUM_TURQUOISE:uint = 0xFF48D1CC;
		static public const MEDIUM_ORCHID:uint = 0xFFBA55D3;
		static public const DARK_KHAKI:uint = 0xFFBDB76B;
		static public const MEDIUM_PURPLE:uint = 0xFF9370DB;
		static public const PALE_VIOLET_RED:uint = 0xFFDB7093;
		static public const MEDIUM_AQUAMARINE:uint = 0xFF66CDAA;
		static public const GREEN_YELLOW:uint = 0xFFADFF2F;
		static public const ROSY_BROWN:uint = 0xFFBC8F8F;
		static public const GOLD:uint = 0xFFFFD700;
		static public const DARK_SEA_GREEN:uint = 0xFF8FBC8B;
		static public const MEDIUM_SLATE_BLUE:uint = 0xFF7B68EE;
		static public const CORAL:uint = 0xFFFF7F50;
		static public const DEEP_SKY_BLUE:uint = 0xFF00BFFF;
		static public const DODGER_BLUE:uint = 0xFF1E90FF;
		static public const TOMATO:uint = 0xFFFF6347;
		static public const DEEP_PINK:uint = 0xFFFF1493;
		static public const ORANGE:uint = 0xFFFFA500;
		static public const DARK_TURQUOISE:uint = 0xFF00CED1;
		static public const GOLDENROD:uint = 0xFFDAA520;
		static public const CADET_BLUE:uint = 0xFF5F9EA0;
		static public const YELLOW_GREEN:uint = 0xFF9ACD32;
		static public const LIGHT_SLATE_GRAY:uint = 0xFF778899;
		static public const BLUE_VIOLET:uint = 0xFF8A2BE2;
		static public const DARK_ORCHID:uint = 0xFF9932CC;
		static public const MEDIUM_SPRING_GREEN:uint = 0xFF00FA9A;
		static public const SLATE_BLUE:uint = 0xFF6A5ACD;
		static public const PERU:uint = 0xFFCD853F;
		static public const ROYAL_BLUE:uint = 0xFF4169E1;
		static public const DARK_ORANGE:uint = 0xFFFF8C00;
		static public const INDIAN_RED:uint = 0xFFCD5C5C;
		static public const GRAY:uint = 0xFF808080;
		static public const SLATE_GRAY:uint = 0xFF708090;
		static public const CHARTREUSE:uint = 0xFF7FFF00;
		static public const SPRING_GREEN:uint = 0xFF00FF7F;
		static public const LIGHT_SEA_GREEN:uint = 0xFF20B2AA;
		static public const STEEL_BLUE:uint = 0xFF4682B4;
		static public const LAWN_GREEN:uint = 0xFF7CFC00;
		static public const DARK_VIOLET:uint = 0xFF9400D3;
		static public const MEDIUM_VIOLET_RED:uint = 0xFFC71585;
		static public const MEDIUM_SEA_GREEN:uint = 0xFF3CB371;
		static public const CHOCOLATE:uint = 0xFFD2691E;
		static public const DARK_GOLDENROD:uint = 0xFFB8860B;
		static public const ORANGE_RED:uint = 0xFFFF4500;
		static public const DIM_GRAY:uint = 0xFF696969;
		static public const LIME_GREEN:uint = 0xFF32CD32;
		static public const CRIMSON:uint = 0xFFDC143C;
		static public const SIENNA:uint = 0xFFA0522D;
		static public const OLIVE_DRAB:uint = 0xFF6B8E23;
		static public const DARK_MAGENTA:uint = 0xFF8B008B;
		static public const DARK_CYAN:uint = 0xFF008B8B;
		static public const SEA_GREEN:uint = 0xFF2E8B57;
		static public const DARK_SLATE_BLUE:uint = 0xFF483D8B;
		static public const TEAL:uint = 0xFF008080;
		static public const OLIVE:uint = 0xFF808000;
		static public const PURPLE:uint = 0xFF800080;
		static public const BLUE:uint = 0xFF0000FF;
		static public const LIME:uint = 0xFF00FF00;
		static public const RED:uint = 0xFFFF0000;
		static public const BROWN:uint = 0xFFA52A2A;
		static public const FIREBRICK:uint = 0xFFB22222;
		static public const DARK_OLIVE_GREEN:uint = 0xFF556B2F;
		static public const SADDLE_BROWN:uint = 0xFF8B4513;
		static public const FOREST_GREEN:uint = 0xFF228B22;
		static public const DARK_SLATE_GRAY:uint = 0xFF2F4F4F;
		static public const MEDIUM_BLUE:uint = 0xFF0000CD;
		static public const INDIGO:uint = 0xFF4B0082;
		static public const MIDNIGHT_BLUE:uint = 0xFF191970;
		static public const DARK_BLUE:uint = 0xFF00008B;
		static public const DARK_RED:uint = 0xFF8B0000;
		static public const MAROON:uint = 0xFF800000;
		static public const NAVY:uint = 0xFF000080;
		static public const GREEN:uint = 0xFF008000;
		static public const DARK_GREEN:uint = 0xFF006400;
		static public const BLACK:uint = 0xFF000000;
		
		public var a:int = 0;
		public var r:int = 0;
		public var g:int = 0;
		public var b:int = 0;
		public var argb:uint = 0;
		public var rgb:int = 0;
		public function Color(argb:uint = NaN, a:int = NaN, r:int = NaN, g:int = NaN, b:int = NaN)
		{
			if(!isNaN(a)){
				this.a = a;
			}else if(!isNaN(argb)){
				this.a = argb >> 24;//24bit右にずらす。
			}
			if(!isNaN(r)){
				this.r = r;
			}else if(!isNaN(argb)){
				this.r = argb >> 16 & 0xff;//16bit右にずらして、下位8bitのみを取り出す。
			}
			if(!isNaN(g)){
				this.g = g;
			}else if(!isNaN(argb)){
				this.g = argb >> 8 & 0xff;//8bit右にずらして、下位8bitのみを取り出す。
			}
			if(!isNaN(b)){
				this.b = b;
			}else if(!isNaN(argb)){
				this.b = argb & 0xff;//下位8bitのみを取り出す。
			}
			calc();
		}
		
		static public function argbFromRGB(rgb:int, a:int = 0xFF):uint {
			return a << 24 | rgb;
		}
		static public function rgbFromARGB(argb:uint):int {
			return argb & 0xFFFFFF;
		}
		
		private function calc():void {
			argb = a << 24 | r << 16 | g << 8 | b;
			rgb = r << 16 | g << 8 | b;
		}
		
		public function toColorTransform():ColorTransform {	
			return new ColorTransform(0, 0, 0, 0, r, g, b, a);
		}
		public function setBrightness(ratio:Number):Color {
			if(ratio < 0 || 2 < ratio){ratio = 1;trace("function rgbBrightness 範囲外")}
			if(ratio <= 1){
				r *= ratio;
				g *= ratio;
				b *= ratio;
			}else{
				r = (255 - r) * (ratio - 1) + r;
				g = (255 - g) * (ratio - 1) + g;
				b = (255 - b) * (ratio - 1) + b;
			}
			calc();
			return this;
		}
		
		
		/**
		 * フィールドカラーに変色します.
		 * 6桁16進数から、2桁ぶんずつを取り出す。 
		 * 色情報は24bit。r8bit+g8bit+b8bit。24桁の二進数 
		 * @param	rgb
		 * @param	ratio
		 * @return
		 */
		static public function ColorTransformFromRGB(rgb:int, ratio:Number = 1):ColorTransform {	
			//ratioが1以外の場合、明度変更関数へ
			if(ratio != 1){rgb = rgbBrightness(rgb,ratio)};
			var colorTransform:ColorTransform = new ColorTransform();
			colorTransform.redMultiplier = colorTransform.blueMultiplier = colorTransform.greenMultiplier = 0;
			colorTransform.redOffset = rgb >> 16;//16bit右にずらす。
			colorTransform.greenOffset = rgb >> 8 & 0xff;//8bit右にずらして、下位8bitのみを取り出す。
			colorTransform.blueOffset = rgb & 0xff;//下位8bitのみを取り出す。
			return colorTransform;
		}
		
		/**
		 * 色の明度を相対的に変える関数。
		 * rgb値と割合を与えて、結果を返す。
		 * rgbは、0xffffff段階の値。
		 * ratioが0の時に0x000000に、1の時にそのまま、2の時には0xffffffになる。
		 * 相対的に、ちょっと暗くしたい時には、ratioを0.8に、ちょっと明るくしたい時にはratioを1.2などに設定する。
		 * 
		 * @param	rgb
		 * @param	ratio
		 * @return
		 */
		static public function rgbBrightness(rgb:int,ratio:Number):int{
			if(ratio < 0 || 2 < ratio){ratio = 1;trace("function rgbBrightness 範囲外")}
			var _r:int = rgb >> 16;//16bit右にずらす。
			var _g:int = rgb >> 8 & 0xff;//8bit右にずらして、下位8bitのみを取り出す。
			var _b:int = rgb & 0xff;//下位8bitのみを取り出す。
			if(ratio <= 1){
				_r *= ratio;
				_g *= ratio;
				_b *= ratio;
			}else{
				_r = (255 - _r)*(ratio-1)+_r;
				_g = (255 - _g)*(ratio-1)+_g;
				_b = (255 - _b)*(ratio-1)+_b;
			}
			return _r<<16 | _g<<8 | _b;
		}
	}

}