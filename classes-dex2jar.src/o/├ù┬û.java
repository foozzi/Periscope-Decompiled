package o;

import android.os.Build.VERSION;

public class ז
{
  private static final ז.ˋ ל = new ז.ˏ();
  private final Object ץ;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      ל = new ז.ˎ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      ל = new ז.ˊ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ל = new ז.if();
      return;
    }
  }
  
  public ז(Object paramObject)
  {
    this.ץ = paramObject;
  }
  
  public static ז ۦ()
  {
    return new ז(ל.เ());
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (ז)paramObject;
    if (this.ץ == null)
    {
      if (paramObject.ץ != null) {
        return false;
      }
    }
    else if (!this.ץ.equals(paramObject.ץ)) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    if (this.ץ == null) {
      return 0;
    }
    return this.ץ.hashCode();
  }
  
  public void setFromIndex(int paramInt)
  {
    ל.ˋ(this.ץ, paramInt);
  }
  
  public void setItemCount(int paramInt)
  {
    ל.ˎ(this.ץ, paramInt);
  }
  
  public void setScrollable(boolean paramBoolean)
  {
    ל.ˊ(this.ץ, paramBoolean);
  }
  
  public void setToIndex(int paramInt)
  {
    ל.ˏ(this.ץ, paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.×
 * JD-Core Version:    0.7.0.1
 */