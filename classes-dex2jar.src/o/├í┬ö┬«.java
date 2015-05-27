package o;

import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

class ᔮ
{
  private static final FilenameFilter oX = new ᘤ();
  static final Map<String, String> oY = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
  private static final short[] oZ = { 10, 20, 30, 60, 120, 300 };
  private final Object pa = new Object();
  private final ᓺ pb;
  private Thread pc;
  
  public ᔮ(ᓺ paramᓺ)
  {
    if (paramᓺ == null) {
      throw new IllegalArgumentException("createReportCall must not be null.");
    }
    this.pb = paramᓺ;
  }
  
  boolean ˊ(ᔪ paramᔪ)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    for (;;)
    {
      synchronized (this.pa)
      {
        try
        {
          Object localObject1 = ɬ.ｿ().getContext();
          localObject1 = new ᓚ(new qf().ᐠ((Context)localObject1), paramᔪ);
          boolean bool3 = this.pb.ˊ((ᓚ)localObject1);
          ps localps = pj.cd();
          StringBuilder localStringBuilder = new StringBuilder().append("Crashlytics report upload ");
          if (!bool3) {
            break label178;
          }
          localObject1 = "complete: ";
          localps.ـ("Fabric", (String)localObject1 + paramᔪ.getFileName());
          if (bool3)
          {
            paramᔪ.ᔂ();
            bool1 = true;
          }
        }
        catch (Exception localException)
        {
          pj.cd().ˏ("Fabric", "Error occurred sending report " + paramᔪ, localException);
          bool1 = bool2;
        }
        return bool1;
      }
      label178:
      String str = "FAILED: ";
    }
  }
  
  public void ᐧ(float paramFloat)
  {
    try
    {
      if (this.pc == null)
      {
        this.pc = new Thread(new ᔮ.if(this, paramFloat), "Crashlytics Report Uploader");
        this.pc.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  List<ᔪ> ᔩ()
  {
    pj.cd().ˑ("Fabric", "Checking for crash reports...");
    synchronized (this.pa)
    {
      File[] arrayOfFile = ɬ.ｿ().Τ().listFiles(oX);
    }
    ??? = new LinkedList();
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      File localFile = localObject1[i];
      pj.cd().ˑ("Fabric", "Found crash report " + localFile.getPath());
      ((List)???).add(new ᴈ(localFile));
      i += 1;
    }
    if (((List)???).isEmpty()) {
      pj.cd().ˑ("Fabric", "No reports found.");
    }
    return ???;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á®
 * JD-Core Version:    0.7.0.1
 */