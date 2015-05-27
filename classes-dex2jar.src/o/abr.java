package o;

import java.util.Date;
import java.util.Locale;

public class abr
  implements abs
{
  private final StringBuffer bwO = new StringBuffer();
  private final StringBuffer bwP = new StringBuffer();
  
  private void append(String paramString)
  {
    this.bwO.append(paramString);
  }
  
  private void wB()
  {
    try
    {
      this.bwP.append(this.bwO);
      this.bwO.setLength(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void log(String paramString)
  {
    if (anw.isEmpty(paramString)) {
      return;
    }
    append(String.format(Locale.US, "%s: %s\n", new Object[] { new Date(), paramString }));
  }
  
  public void wA()
  {
    wB();
  }
  
  public String wz()
  {
    return this.bwO.toString();
  }
  
  public void ᒾ(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    try
    {
      this.bwP.append(this.bwO);
      this.bwO.append(this.bwP);
      this.bwP.setLength(0);
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abr
 * JD-Core Version:    0.7.0.1
 */