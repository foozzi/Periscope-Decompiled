package o;

import android.content.Context;
import java.io.File;

public class sw
{
  private final String Yp;
  private final String Yq;
  private final Context dV;
  
  public sw(pq parampq)
  {
    if (parampq.getContext() == null) {
      throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }
    this.dV = parampq.getContext();
    this.Yp = parampq.getPath();
    this.Yq = ("Android/" + this.dV.getPackageName());
  }
  
  public File getFilesDir()
  {
    return ͺ(this.dV.getFilesDir());
  }
  
  File ͺ(File paramFile)
  {
    if (paramFile != null)
    {
      if ((paramFile.exists()) || (paramFile.mkdirs())) {
        return paramFile;
      }
      pj.cd().ᐧ("Fabric", "Couldn't create file");
    }
    else
    {
      pj.cd().ˑ("Fabric", "Null File");
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sw
 * JD-Core Version:    0.7.0.1
 */