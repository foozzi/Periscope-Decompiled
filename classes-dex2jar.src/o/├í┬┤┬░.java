package o;

import java.io.File;

public class ᴰ
  implements ᓳ.if
{
  private final int iV;
  private final ᴰ.if iW;
  
  public ᴰ(ᴰ.if paramif, int paramInt)
  {
    this.iV = paramInt;
    this.iW = paramif;
  }
  
  public ᓳ ᵐ()
  {
    File localFile = this.iW.ᵝ();
    if (localFile == null) {
      return null;
    }
    if ((!localFile.mkdirs()) && ((!localFile.exists()) || (!localFile.isDirectory()))) {
      return null;
    }
    return ᴻ.ˊ(localFile, this.iV);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´°
 * JD-Core Version:    0.7.0.1
 */