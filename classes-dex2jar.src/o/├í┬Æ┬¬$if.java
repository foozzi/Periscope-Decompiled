package o;

import android.graphics.Bitmap.Config;

final class ᒪ$if
  implements ᒧ
{
  private final ᒪ.ˊ iP;
  private Bitmap.Config ip;
  private int size;
  
  public ᒪ$if(ᒪ.ˊ paramˊ)
  {
    this.iP = paramˊ;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof if))
    {
      paramObject = (if)paramObject;
      return (this.size == paramObject.size) && (this.ip == null ? paramObject.ip == null : this.ip.equals(paramObject.ip));
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = this.size;
    int i;
    if (this.ip != null) {
      i = this.ip.hashCode();
    } else {
      i = 0;
    }
    return j * 31 + i;
  }
  
  public String toString()
  {
    return ᒪ.ˋ(this.size, this.ip);
  }
  
  public void ˎ(int paramInt, Bitmap.Config paramConfig)
  {
    this.size = paramInt;
    this.ip = paramConfig;
  }
  
  public void ᒫ()
  {
    this.iP.ˊ(this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áª.if
 * JD-Core Version:    0.7.0.1
 */