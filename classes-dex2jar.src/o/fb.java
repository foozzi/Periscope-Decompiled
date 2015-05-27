package o;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

final class fb
  implements ge<java.util.Date>, fv<java.util.Date>
{
  private final DateFormat JM;
  private final DateFormat JN;
  private final DateFormat JO;
  
  fb()
  {
    this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
  }
  
  public fb(int paramInt1, int paramInt2)
  {
    this(DateFormat.getDateTimeInstance(paramInt1, paramInt2, Locale.US), DateFormat.getDateTimeInstance(paramInt1, paramInt2));
  }
  
  fb(String paramString)
  {
    this(new SimpleDateFormat(paramString, Locale.US), new SimpleDateFormat(paramString));
  }
  
  fb(DateFormat paramDateFormat1, DateFormat paramDateFormat2)
  {
    this.JM = paramDateFormat1;
    this.JN = paramDateFormat2;
    this.JO = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    this.JO.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  private java.util.Date ˊ(fw paramfw)
  {
    synchronized (this.JN)
    {
      try
      {
        java.util.Date localDate1 = this.JN.parse(paramfw.h());
        return localDate1;
      }
      catch (ParseException localParseException1)
      {
        try
        {
          java.util.Date localDate2 = this.JM.parse(paramfw.h());
          return localDate2;
        }
        catch (ParseException localParseException2)
        {
          try
          {
            java.util.Date localDate3 = this.JO.parse(paramfw.h());
            return localDate3;
          }
          catch (ParseException localParseException3)
          {
            throw new gf(paramfw.h(), localParseException3);
          }
        }
      }
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(fb.class.getSimpleName());
    localStringBuilder.append('(').append(this.JN.getClass().getSimpleName()).append(')');
    return localStringBuilder.toString();
  }
  
  public java.util.Date ˊ(fw paramfw, Type paramType, fu paramfu)
  {
    if (!(paramfw instanceof gc)) {
      throw new ga("The date should be a string value");
    }
    paramfw = ˊ(paramfw);
    if (paramType == java.util.Date.class) {
      return paramfw;
    }
    if (paramType == Timestamp.class) {
      return new Timestamp(paramfw.getTime());
    }
    if (paramType == java.sql.Date.class) {
      return new java.sql.Date(paramfw.getTime());
    }
    throw new IllegalArgumentException(getClass() + " cannot deserialize to " + paramType);
  }
  
  public fw ˊ(java.util.Date paramDate, Type arg2, gd paramgd)
  {
    synchronized (this.JN)
    {
      paramDate = new gc(this.JM.format(paramDate));
      return paramDate;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fb
 * JD-Core Version:    0.7.0.1
 */