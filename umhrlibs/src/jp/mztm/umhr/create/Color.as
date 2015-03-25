package jp.mztm.umhr.create
{
	import flash.geom.ColorTransform;
	
	/**
	 * ...
	 * @author umhr
	 */
	public class Color
	{
		static public const WHITE:int = 0xFFFFFF;
		static public const SNOW:int = 0xFFFAFA;
		static public const GHOST_WHITE:int = 0xF8F8FF;
		static public const MINT_CREAM:int = 0xF5FFFA;
		static public const AZURE:int = 0xF0FFFF;
		static public const IVORY:int = 0xFFFFF0;
		static public const FLORAL_WHITE:int = 0xFFFAF0;
		static public const ALICE_BLUE:int = 0xF0F8FF;
		static public const LAVENDER_BLUSH:int = 0xFFF0F5;
		static public const SEA_SHELL:int = 0xFFF5EE;
		static public const WHITE_SMOKE:int = 0xF5F5F5;
		static public const HONEYDEW:int = 0xF0FFF0;
		static public const LIGHT_CYAN:int = 0xE0FFFF;
		static public const LIGHT_YELLOW:int = 0xFFFFE0;
		static public const OLD_LACE:int = 0xFDF5E6;
		static public const CORNSILK:int = 0xFFF8DC;
		static public const LINEN:int = 0xFAF0E6;
		static public const LEMON_CHIFFON:int = 0xFFFACD;
		static public const LIGHT_GOLDENROD_YELLOW:int = 0xFAFAD2;
		static public const LAVENDER:int = 0xE6E6FA;
		static public const BEIGE:int = 0xF5F5DC;
		static public const MISTY_ROSE:int = 0xFFE4E1;
		static public const PAPAYA_WHIP:int = 0xFFEFD5;
		static public const ANTIQUE_WHITE:int = 0xFAEBD7;
		static public const BLANCHED_ALMOND:int = 0xFFEBCD;
		static public const BISQUE:int = 0xFFE4C4;
		static public const MOCCASIN:int = 0xFFE4B5;
		static public const GAINSBORO:int = 0xDCDCDC;
		static public const PEACH_PUFF:int = 0xFFDAB9;
		static public const PALE_TURQUOISE:int = 0xAFEEEE;
		static public const NAVAJO_WHITE:int = 0xFFDEAD;
		static public const PINK:int = 0xFFC0CB;
		static public const WHEAT:int = 0xF5DEB3;
		static public const PALE_GOLDENROD:int = 0xEEE8AA;
		static public const LIGHT_GRAY:int = 0xD3D3D3;
		static public const LIGHT_PINK:int = 0xFFB6C1;
		static public const POWDER_BLUE:int = 0xB0E0E6;
		static public const THISTLE:int = 0xD8BFD8;
		static public const LIGHT_BLUE:int = 0xADD8E6;
		static public const KHAKI:int = 0xF0E68C;
		static public const VIOLET:int = 0xEE82EE;
		static public const PLUM:int = 0xDDA0DD;
		static public const AQUAMARINE:int = 0x7FFFD4;
		static public const LIGHT_STEEL_BLUE:int = 0xB0C4DE;
		static public const LIGHT_SKY_BLUE:int = 0x87CEFA;
		static public const SILVER:int = 0xC0C0C0;
		static public const SKY_BLUE:int = 0x87CEEB;
		static public const PALE_GREEN:int = 0x98FB98;
		static public const ORCHID:int = 0xDA70D6;
		static public const BURLY_WOOD:int = 0xDEB887;
		static public const HOT_PINK:int = 0xFF69B4;
		static public const LIGHT_SALMON:int = 0xFFA07A;
		static public const TAN:int = 0xD2B48C;
		static public const LIGHT_GREEN:int = 0x90EE90;
		static public const CYAN:int = 0x00FFFF;
		static public const MAGENTA:int = 0xFF00FF;
		static public const FUCHSIA:int = 0xFF00FF;
		static public const AQUA:int = 0x00FFFF;
		static public const YELLOW:int = 0xFFFF00;
		static public const DARK_GRAY:int = 0xA9A9A9;
		static public const DARK_SALMON:int = 0xE9967A;
		static public const SANDY_BROWN:int = 0xF4A460;
		static public const LIGHT_CORAL:int = 0xF08080;
		static public const TURQUOISE:int = 0x40E0D0;
		static public const SALMON:int = 0xFA8072;
		static public const CORNFLOWER_BLUE:int = 0x6495ED;
		static public const MEDIUM_TURQUOISE:int = 0x48D1CC;
		static public const MEDIUM_ORCHID:int = 0xBA55D3;
		static public const DARK_KHAKI:int = 0xBDB76B;
		static public const MEDIUM_PURPLE:int = 0x9370DB;
		static public const PALE_VIOLET_RED:int = 0xDB7093;
		static public const MEDIUM_AQUAMARINE:int = 0x66CDAA;
		static public const GREEN_YELLOW:int = 0xADFF2F;
		static public const ROSY_BROWN:int = 0xBC8F8F;
		static public const GOLD:int = 0xFFD700;
		static public const DARK_SEA_GREEN:int = 0x8FBC8B;
		static public const MEDIUM_SLATE_BLUE:int = 0x7B68EE;
		static public const CORAL:int = 0xFF7F50;
		static public const DEEP_SKY_BLUE:int = 0x00BFFF;
		static public const DODGER_BLUE:int = 0x1E90FF;
		static public const TOMATO:int = 0xFF6347;
		static public const DEEP_PINK:int = 0xFF1493;
		static public const ORANGE:int = 0xFFA500;
		static public const DARK_TURQUOISE:int = 0x00CED1;
		static public const GOLDENROD:int = 0xDAA520;
		static public const CADET_BLUE:int = 0x5F9EA0;
		static public const YELLOW_GREEN:int = 0x9ACD32;
		static public const LIGHT_SLATE_GRAY:int = 0x778899;
		static public const BLUE_VIOLET:int = 0x8A2BE2;
		static public const DARK_ORCHID:int = 0x9932CC;
		static public const MEDIUM_SPRING_GREEN:int = 0x00FA9A;
		static public const SLATE_BLUE:int = 0x6A5ACD;
		static public const PERU:int = 0xCD853F;
		static public const ROYAL_BLUE:int = 0x4169E1;
		static public const DARK_ORANGE:int = 0xFF8C00;
		static public const INDIAN_RED:int = 0xCD5C5C;
		static public const GRAY:int = 0x808080;
		static public const SLATE_GRAY:int = 0x708090;
		static public const CHARTREUSE:int = 0x7FFF00;
		static public const SPRING_GREEN:int = 0x00FF7F;
		static public const LIGHT_SEA_GREEN:int = 0x20B2AA;
		static public const STEEL_BLUE:int = 0x4682B4;
		static public const LAWN_GREEN:int = 0x7CFC00;
		static public const DARK_VIOLET:int = 0x9400D3;
		static public const MEDIUM_VIOLET_RED:int = 0xC71585;
		static public const MEDIUM_SEA_GREEN:int = 0x3CB371;
		static public const CHOCOLATE:int = 0xD2691E;
		static public const DARK_GOLDENROD:int = 0xB8860B;
		static public const ORANGE_RED:int = 0xFF4500;
		static public const DIM_GRAY:int = 0x696969;
		static public const LIME_GREEN:int = 0x32CD32;
		static public const CRIMSON:int = 0xDC143C;
		static public const SIENNA:int = 0xA0522D;
		static public const OLIVE_DRAB:int = 0x6B8E23;
		static public const DARK_MAGENTA:int = 0x8B008B;
		static public const DARK_CYAN:int = 0x008B8B;
		static public const SEA_GREEN:int = 0x2E8B57;
		static public const DARK_SLATE_BLUE:int = 0x483D8B;
		static public const TEAL:int = 0x008080;
		static public const OLIVE:int = 0x808000;
		static public const PURPLE:int = 0x800080;
		static public const BLUE:int = 0x0000FF;
		static public const LIME:int = 0x00FF00;
		static public const RED:int = 0xFF0000;
		static public const BROWN:int = 0xA52A2A;
		static public const FIREBRICK:int = 0xB22222;
		static public const DARK_OLIVE_GREEN:int = 0x556B2F;
		static public const SADDLE_BROWN:int = 0x8B4513;
		static public const FOREST_GREEN:int = 0x228B22;
		static public const DARK_SLATE_GRAY:int = 0x2F4F4F;
		static public const MEDIUM_BLUE:int = 0x0000CD;
		static public const INDIGO:int = 0x4B0082;
		static public const MIDNIGHT_BLUE:int = 0x191970;
		static public const DARK_BLUE:int = 0x00008B;
		static public const DARK_RED:int = 0x8B0000;
		static public const MAROON:int = 0x800000;
		static public const NAVY:int = 0x000080;
		static public const GREEN:int = 0x008000;
		static public const DARK_GREEN:int = 0x006400;
		static public const BLACK:int = 0x000000;		
		public function Color()
		{
		
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