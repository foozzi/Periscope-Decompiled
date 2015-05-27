package o;

import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class ᴈ
  implements ᔪ
{
  private final File file;
  private final Map<String, String> pm;
  
  public ᴈ(File paramFile)
  {
    this(paramFile, Collections.emptyMap());
  }
  
  public ᴈ(File paramFile, Map<String, String> paramMap)
  {
    this.file = paramFile;
    this.pm = new HashMap(paramMap);
    if (this.file.length() == 0L) {
      this.pm.putAll(ᔮ.oY);
    }
  }
  
  public String getFileName()
  {
    return ᔃ().getName();
  }
  
  public boolean ᔂ()
  {
    pj.cd().ˑ("Fabric", "Removing report at " + this.file.getPath());
    return this.file.delete();
  }
  
  public File ᔃ()
  {
    return this.file;
  }
  
  public Map<String, String> ᔦ()
  {
    return Collections.unmodifiableMap(this.pm);
  }
  
  public String ｯ()
  {
    String str = getFileName();
    return str.substring(0, str.lastIndexOf('.'));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */