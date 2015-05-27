package o;

final class ᴳ
  extends ᴧ
{
  public String getId()
  {
    return "AT_MOST.com.bumptech.glide.load.data.bitmap";
  }
  
  protected int ʽ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = (int)Math.ceil(Math.max(paramInt2 / paramInt4, paramInt1 / paramInt3));
    paramInt2 = Math.max(1, Integer.highestOneBit(paramInt1));
    if (paramInt2 < paramInt1) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    return paramInt2 << paramInt1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´³
 * JD-Core Version:    0.7.0.1
 */