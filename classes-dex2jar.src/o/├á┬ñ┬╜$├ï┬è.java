package o;

import java.io.File;
import java.io.FilenameFilter;

class ऽ$ˊ
  implements FilenameFilter
{
  private final String ov;
  
  public ऽ$ˊ(String paramString)
  {
    this.ov = paramString;
  }
  
  public boolean accept(File paramFile, String paramString)
  {
    return (paramString.contains(this.ov)) && (!paramString.endsWith(".cls_temp"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¤½.Ë
 * JD-Core Version:    0.7.0.1
 */