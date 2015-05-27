package o;

import android.content.Context;
import java.io.File;
import java.io.IOException;

class ᔂ
{
  private final Context dV;
  private final File og;
  private qu oz;
  
  public ᔂ(Context paramContext, File paramFile)
  {
    this(paramContext, paramFile, null);
  }
  
  ᔂ(Context paramContext, File paramFile, qu paramqu)
  {
    this.dV = paramContext;
    this.og = paramFile;
    this.oz = paramqu;
  }
  
  ŧ ᓗ()
  {
    if (this.oz == null) {
      return null;
    }
    int[] arrayOfInt = new int[1];
    int[] tmp14_13 = arrayOfInt;
    tmp14_13[0] = 0;
    tmp14_13;
    byte[] arrayOfByte = new byte[this.oz.cJ()];
    try
    {
      this.oz.ˊ(new ᔃ(this, arrayOfByte, arrayOfInt));
    }
    catch (IOException localIOException)
    {
      pj.cd().ˏ("Fabric", "A problem occurred while reading the Crashlytics log file.", localIOException);
    }
    return ŧ.ˋ(arrayOfByte, 0, arrayOfInt[0]);
  }
  
  void ᓚ()
  {
    qh.ˊ(this.oz, "There was a problem closing the Crashlytics log file.");
    this.oz = null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */