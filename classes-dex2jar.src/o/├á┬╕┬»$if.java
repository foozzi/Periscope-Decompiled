package o;

import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;

class ฯ$if
  extends ᵛ<Integer, PorterDuffColorFilter>
{
  public ฯ$if(int paramInt)
  {
    super(paramInt);
  }
  
  private static int ˋ(int paramInt, PorterDuff.Mode paramMode)
  {
    return (paramInt + 31) * 31 + paramMode.hashCode();
  }
  
  PorterDuffColorFilter ˊ(int paramInt, PorterDuff.Mode paramMode)
  {
    return (PorterDuffColorFilter)get(Integer.valueOf(ˋ(paramInt, paramMode)));
  }
  
  PorterDuffColorFilter ˊ(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter)
  {
    return (PorterDuffColorFilter)put(Integer.valueOf(ˋ(paramInt, paramMode)), paramPorterDuffColorFilter);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸¯.if
 * JD-Core Version:    0.7.0.1
 */