package o;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public class ܝ
{
  private static final ܝ.ˋ ʌ = new ܝ.if();
  private Object ʃ;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      ʌ = new ܝ.ˎ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ʌ = new ܝ.ˊ();
      return;
    }
  }
  
  public ܝ(Context paramContext)
  {
    this.ʃ = ʌ.ˋ(paramContext);
  }
  
  public boolean draw(Canvas paramCanvas)
  {
    return ʌ.ˊ(this.ʃ, paramCanvas);
  }
  
  public void finish()
  {
    ʌ.ٴ(this.ʃ);
  }
  
  public boolean isFinished()
  {
    return ʌ.י(this.ʃ);
  }
  
  public void setSize(int paramInt1, int paramInt2)
  {
    ʌ.ˊ(this.ʃ, paramInt1, paramInt2);
  }
  
  public boolean ˇ(int paramInt)
  {
    return ʌ.ᐝ(this.ʃ, paramInt);
  }
  
  public boolean ͺ(float paramFloat)
  {
    return ʌ.ˊ(this.ʃ, paramFloat);
  }
  
  public boolean ﯨ()
  {
    return ʌ.ᴵ(this.ʃ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü
 * JD-Core Version:    0.7.0.1
 */