package o;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class ﱠ<T>
  implements ﺀ<File, T>
{
  private static final ﱠ.if kC = new ﱠ.if();
  private final ﱠ.if kD;
  private ﺀ<InputStream, T> kq;
  
  public ﱠ(ﺀ<InputStream, T> paramﺀ)
  {
    this(paramﺀ, kC);
  }
  
  ﱠ(ﺀ<InputStream, T> paramﺀ, ﱠ.if paramif)
  {
    this.kq = paramﺀ;
    this.kD = paramif;
  }
  
  public String getId()
  {
    return "";
  }
  
  public ڔ<T> ˋ(File paramFile, int paramInt1, int paramInt2)
  {
    File localFile = null;
    try
    {
      paramFile = this.kD.ˏ(paramFile);
      localFile = paramFile;
      ڔ localڔ = this.kq.ˋ(paramFile, paramInt1, paramInt2);
      if (paramFile != null) {
        try
        {
          paramFile.close();
          return localڔ;
        }
        catch (IOException paramFile)
        {
          return localڔ;
        }
      }
      return localڔ;
    }
    finally
    {
      if (localFile != null) {
        try
        {
          localFile.close();
        }
        catch (IOException localIOException) {}
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï± 
 * JD-Core Version:    0.7.0.1
 */