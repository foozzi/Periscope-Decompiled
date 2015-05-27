package o;

import android.graphics.Bitmap.Config;

class ܢ$if
  implements ᒧ
{
  private int height;
  private final ܢ.ˊ io;
  private Bitmap.Config ip;
  private int width;
  
  public ܢ$if(ܢ.ˊ paramˊ)
  {
    this.io = paramˊ;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof if))
    {
      paramObject = (if)paramObject;
      return (this.width == paramObject.width) && (this.height == paramObject.height) && (this.ip == paramObject.ip);
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = this.width;
    int k = this.height;
    int i;
    if (this.ip != null) {
      i = this.ip.hashCode();
    } else {
      i = 0;
    }
    return (j * 31 + k) * 31 + i;
  }
  
  public String toString()
  {
    return ܢ.ᐝ(this.width, this.height, this.ip);
  }
  
  public void ʻ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    this.width = paramInt1;
    this.height = paramInt2;
    this.ip = paramConfig;
  }
  
  public void ᒫ()
  {
    this.io.ˊ(this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü¢.if
 * JD-Core Version:    0.7.0.1
 */