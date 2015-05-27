package o;

import android.content.Context;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class si
  implements sc
{
  private final File XF;
  private final String XG;
  private final File XH;
  private qu XI;
  private File XJ;
  private final Context dV;
  
  public si(Context paramContext, File paramFile, String paramString1, String paramString2)
  {
    this.dV = paramContext;
    this.XF = paramFile;
    this.XG = paramString2;
    this.XH = new File(this.XF, paramString1);
    this.XI = new qu(this.XH);
    dm();
  }
  
  private void dm()
  {
    this.XJ = new File(this.XF, this.XG);
    if (!this.XJ.exists()) {
      this.XJ.mkdirs();
    }
  }
  
  private void ˋ(File paramFile1, File paramFile2)
  {
    Object localObject3 = null;
    Object localObject2 = null;
    Object localObject1 = localObject3;
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile1);
      localObject1 = localObject3;
      localObject2 = localFileInputStream;
      paramFile2 = ʽ(paramFile2);
      localObject1 = paramFile2;
      localObject2 = localFileInputStream;
      qh.ˊ(localFileInputStream, paramFile2, new byte[1024]);
      qh.ˊ(localFileInputStream, "Failed to close file input stream");
      qh.ˊ(paramFile2, "Failed to close output stream");
      paramFile1.delete();
      return;
    }
    finally
    {
      qh.ˊ(localObject2, "Failed to close file input stream");
      qh.ˊ((Closeable)localObject1, "Failed to close output stream");
      paramFile1.delete();
    }
  }
  
  public int di()
  {
    return this.XI.cJ();
  }
  
  public boolean dj()
  {
    return this.XI.isEmpty();
  }
  
  public List<File> dk()
  {
    return Arrays.asList(this.XJ.listFiles());
  }
  
  public void dl()
  {
    try
    {
      this.XI.close();
    }
    catch (IOException localIOException) {}
    this.XH.delete();
  }
  
  public OutputStream ʽ(File paramFile)
  {
    return new FileOutputStream(paramFile);
  }
  
  public void ˍ(List<File> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      qh.ᐝ(this.dV, String.format("deleting sent analytics file %s", new Object[] { localFile.getName() }));
      localFile.delete();
    }
  }
  
  public void ˍ(byte[] paramArrayOfByte)
  {
    this.XI.ˍ(paramArrayOfByte);
  }
  
  public void ᕐ(String paramString)
  {
    this.XI.close();
    ˋ(this.XH, new File(this.XJ, paramString));
    this.XI = new qu(this.XH);
  }
  
  public boolean ᵓ(int paramInt1, int paramInt2)
  {
    return this.XI.ᒢ(paramInt1, paramInt2);
  }
  
  public List<File> ﮄ(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = this.XJ.listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(arrayOfFile[i]);
      if (localArrayList.size() >= paramInt) {
        return localArrayList;
      }
      i += 1;
    }
    return localArrayList;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.si
 * JD-Core Version:    0.7.0.1
 */