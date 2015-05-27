package o;

import java.util.Calendar;
import java.util.GregorianCalendar;

final class ji
  extends gk<Calendar>
{
  public void ˊ(kc paramkc, Calendar paramCalendar)
  {
    if (paramCalendar == null)
    {
      paramkc.T();
      return;
    }
    paramkc.R();
    paramkc.ᒢ("year");
    paramkc.ᐩ(paramCalendar.get(1));
    paramkc.ᒢ("month");
    paramkc.ᐩ(paramCalendar.get(2));
    paramkc.ᒢ("dayOfMonth");
    paramkc.ᐩ(paramCalendar.get(5));
    paramkc.ᒢ("hourOfDay");
    paramkc.ᐩ(paramCalendar.get(11));
    paramkc.ᒢ("minute");
    paramkc.ᐩ(paramCalendar.get(12));
    paramkc.ᒢ("second");
    paramkc.ᐩ(paramCalendar.get(13));
    paramkc.S();
  }
  
  public Calendar י(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    paramjz.beginObject();
    int i2 = 0;
    int i1 = 0;
    int n = 0;
    int m = 0;
    int j = 0;
    int k = 0;
    while (paramjz.J() != kb.Nw)
    {
      String str = paramjz.nextName();
      int i = paramjz.nextInt();
      int i3;
      int i4;
      int i5;
      int i6;
      int i7;
      if ("year".equals(str))
      {
        i3 = i;
        i4 = i1;
        i5 = n;
        i6 = m;
        i7 = j;
      }
      else if ("month".equals(str))
      {
        i3 = i2;
        i4 = i;
        i5 = n;
        i6 = m;
        i7 = j;
      }
      else if ("dayOfMonth".equals(str))
      {
        i3 = i2;
        i4 = i1;
        i5 = i;
        i6 = m;
        i7 = j;
      }
      else if ("hourOfDay".equals(str))
      {
        i3 = i2;
        i4 = i1;
        i5 = n;
        i6 = i;
        i7 = j;
      }
      else if ("minute".equals(str))
      {
        i3 = i2;
        i4 = i1;
        i5 = n;
        i6 = m;
        i7 = i;
      }
      else
      {
        i3 = i2;
        i4 = i1;
        i5 = n;
        i6 = m;
        i7 = j;
        if ("second".equals(str))
        {
          k = i;
          i7 = j;
          i6 = m;
          i5 = n;
          i4 = i1;
          i3 = i2;
        }
      }
      i2 = i3;
      i1 = i4;
      n = i5;
      m = i6;
      j = i7;
    }
    paramjz.endObject();
    return new GregorianCalendar(i2, i1, n, m, j, k);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ji
 * JD-Core Version:    0.7.0.1
 */