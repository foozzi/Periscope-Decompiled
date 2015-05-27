package o;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

class adg
  implements FileFilter
{
  adg(adf paramadf) {}
  
  public boolean accept(File paramFile)
  {
    return Pattern.matches("cpu[0-9]+", paramFile.getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adg
 * JD-Core Version:    0.7.0.1
 */