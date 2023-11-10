/// hex_to_color(hex)
//
//  Returns an RGB color from a given hexadecimal color code.
//  Depends on hex_to_dec().
//
//      hex         hexadecimal color in RRGGBB format, string
//
/// GMLscripts.com/license
function hex_to_color(argument0,argument1)
{
	var hex = string_replace(argument0,"#","")
	if argument1 = 0
	{
		var color = 0;
		for(var i = 0; i < 6; i++)
		{
			var text = string_char_at(hex,i+1)
			if (text == "A" || text == "a")
			{
				text = 10
			}
			else if (text == "B" || text == "b")
			{
				text = 11
			}
			else if (text == "C" || text == "c")
			{
				text = 12
			}
			else if (text == "D" || text == "d")
			{
				text = 13
			}
			else if (text == "E" || text == "e")
			{
				text = 14
			}
			else if (text == "F" || text == "f")
			{
				text = 15
			}
			else
			{
				if (text != "" && text != " " && text != "-")
				{
					text = real(text)
				}
				else
				{
					text = 0
				}
			}
			color += text*power(16,5-i);
		}
	}
	else
	{
		var rgb_value;
		for(var i = 0; i < 3; i++)
		{
		rgb_value[i] = 0
		}
	
		for(var ii = 0; ii < 6; ii += 2)
		{
			for(var i = 0; i < 1; i++)
			{
				var text = string_char_at(hex,ii+i+1)
				if (text == "A" || text == "a")
				{
					text = 10
				}
				else if (text == "B" || text == "b")
				{
					text = 11
				}
				else if (text == "C" || text == "c")
				{
					text = 12
				}
				else if (text == "D" || text == "d")
				{
					text = 13
				}
				else if (text == "E" || text == "e")
				{
					text = 14
				}
				else if (text == "F" || text == "f")
				{
					text = 15
				}
				else
				{
					if (text != "" && text != " " && text != "-")
					{
						text = real(text)
					}
					else
					{
						text = 0
					}
				}
				
				rgb_value[ii/2] += text*power(16,1-i)
			}
		}
		color = make_color_rgb(rgb_value[0],rgb_value[1],rgb_value[2])
	}

	return (color);
}