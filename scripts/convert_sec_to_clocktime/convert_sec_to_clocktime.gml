/**converts seconds to clock time
@param seconds
@returns clock time
**/
function convert_sec_to_clocktime(argument0)
{
var cal_h = floor(argument0/3600);
var cal_min = floor(argument0/60)-cal_h*60;
var seconds = argument0-cal_min*60
var total_mes = "";
    if (cal_h != 0)
    {
    total_mes = string(cal_h)+":";
    }
    
    if (cal_min >= 10)
    {
    total_mes = string(total_mes)+string(cal_min)+":";
    }
    else
    {
    total_mes = string(total_mes)+"0"+string(cal_min)+":";
    }
    
    if (seconds >= 10)
    {
    total_mes = string(total_mes)+string(seconds);
    }
    else
    {
    total_mes = string(total_mes)+"0"+string(seconds);
    }

return total_mes;
}