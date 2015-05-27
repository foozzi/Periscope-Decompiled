package o;

import android.net.Uri;

public final class ٺ<T>
  implements ס.ˋ
{
  private final ت AR;
  private final ٺ.if<T> AS;
  private volatile boolean AT;
  private volatile T result;
  private final к tE;
  
  public ٺ(String paramString, ت paramت, ٺ.if<T> paramif)
  {
    this.AR = paramت;
    this.AS = paramif;
    this.tE = new к(Uri.parse(paramString), 1);
  }
  
  public final T getResult()
  {
    return this.result;
  }
  
  public final void ঽ()
  {
    this.AT = true;
  }
  
  public final boolean ก()
  {
    return this.AT;
  }
  
  public final void კ()
  {
    Ϝ localϜ = new Ϝ(this.AR, this.tE);
    try
    {
      localϜ.open();
      this.result = this.AS.ˋ(this.AR.getUri(), localϜ);
      return;
    }
    finally
    {
      localϜ.close();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ùº
 * JD-Core Version:    0.7.0.1
 */