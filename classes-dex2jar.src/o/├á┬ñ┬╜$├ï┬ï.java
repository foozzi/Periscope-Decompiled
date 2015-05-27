package o;

import java.io.File;
import java.io.FilenameFilter;

class ऽ$ˋ
  implements FilenameFilter
{
  private final String ow;
  
  public ऽ$ˋ(String paramString)
  {
    this.ow = paramString;
  }
  
  public boolean accept(File paramFile, String paramString)
  {
    if (paramString.equals(this.ow + ".cls")) {
      return false;
    }
    return (paramString.contains(this.ow)) && (!paramString.endsWith(".cls_temp"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¤½.Ë
 * JD-Core Version:    0.7.0.1
 */