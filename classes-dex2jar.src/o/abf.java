package o;

import android.graphics.Color;

public class abf
{
  public final int bvp;
  public final int src;
  
  public abf(int paramInt1, int paramInt2)
  {
    this.src = paramInt1;
    this.bvp = paramInt2;
  }
  
  public int ˆ(float paramFloat)
  {
    int i = Color.red(this.src);
    int j = Color.red(this.bvp);
    int k = Color.green(this.src);
    int m = Color.green(this.bvp);
    int n = Color.blue(this.src);
    int i1 = Color.blue(this.bvp);
    return Color.rgb((int)(i + (j - i) * paramFloat), (int)(k + (m - k) * paramFloat), (int)(n + (i1 - n) * paramFloat));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abf
 * JD-Core Version:    0.7.0.1
 */