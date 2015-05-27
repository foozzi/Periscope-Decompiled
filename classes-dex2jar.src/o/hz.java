package o;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class hz
  extends gk<Date>
{
  public static final gl LA = new ia();
  private final DateFormat JM = DateFormat.getDateTimeInstance(2, 2, Locale.US);
  private final DateFormat JN = DateFormat.getDateTimeInstance(2, 2);
  private final DateFormat JO = I();
  
  private static DateFormat I()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    return localSimpleDateFormat;
  }
  
  private Date ᒡ(String paramString)
  {
    try
    {
      Date localDate1 = this.JN.parse(paramString);
      return localDate1;
    }
    catch (ParseException localParseException1)
    {
      try
      {
        Date localDate2 = this.JM.parse(paramString);
        return localDate2;
      }
      catch (ParseException localParseException2)
      {
        try
        {
          Date localDate3 = this.JO.parse(paramString);
          return localDate3;
        }
        catch (ParseException localParseException3)
        {
          throw new gf(paramString, localParseException3);
        }
      }
    }
    finally {}
  }
  
  public Date ʽ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return ᒡ(paramjz.nextString());
  }
  
  public void ˊ(kc paramkc, Date paramDate)
  {
    if (paramDate == null) {}
    try
    {
      paramkc.T();
      return;
    }
    finally {}
    paramkc.ᖮ(this.JM.format(paramDate));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hz
 * JD-Core Version:    0.7.0.1
 */