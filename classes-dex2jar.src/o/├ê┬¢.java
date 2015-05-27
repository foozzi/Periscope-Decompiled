package o;

import java.io.File;
import java.io.FilenameFilter;

final class ț
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".cls_temp");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.È
 * JD-Core Version:    0.7.0.1
 */