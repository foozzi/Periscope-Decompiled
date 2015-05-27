package o;

import java.io.ByteArrayInputStream;

class Ỵ$ˊ
  extends ঢ
{
  private final イ xJ;
  public final int ye;
  private final String yf;
  private ῗ yg;
  
  public Ỵ$ˊ(ϒ paramϒ, к paramк, byte[] paramArrayOfByte, イ paramイ, int paramInt, String paramString)
  {
    super(paramϒ, paramк, 4, 0, null, paramArrayOfByte);
    this.ye = paramInt;
    this.xJ = paramイ;
    this.yf = paramString;
  }
  
  protected void ˊ(byte[] paramArrayOfByte, int paramInt)
  {
    this.yg = ((ῗ)this.xJ.ˊ(this.yf, new ByteArrayInputStream(paramArrayOfByte, 0, paramInt)));
  }
  
  public ῗ ℓ()
  {
    return this.yg;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»´.Ë
 * JD-Core Version:    0.7.0.1
 */