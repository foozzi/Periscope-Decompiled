package o;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public class sh
  extends si
{
  public sh(Context paramContext, File paramFile, String paramString1, String paramString2)
  {
    super(paramContext, paramFile, paramString1, paramString2);
  }
  
  public OutputStream ʽ(File paramFile)
  {
    return new GZIPOutputStream(new FileOutputStream(paramFile));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sh
 * JD-Core Version:    0.7.0.1
 */