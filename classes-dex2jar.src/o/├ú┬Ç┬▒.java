package o;

public abstract class 〱<Z>
  extends ἲ<Z>
{
  private final int height;
  private final int width;
  
  public 〱()
  {
    this(-2147483648, -2147483648);
  }
  
  public 〱(int paramInt1, int paramInt2)
  {
    this.width = paramInt1;
    this.height = paramInt2;
  }
  
  public final void ˊ(丿 param丿)
  {
    if (!ﾕ.ᵀ(this.width, this.height)) {
      throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.width + " and height: " + this.height + ", either provide dimensions in the constructor" + " or call override()");
    }
    param丿.ᴶ(this.width, this.height);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã±
 * JD-Core Version:    0.7.0.1
 */