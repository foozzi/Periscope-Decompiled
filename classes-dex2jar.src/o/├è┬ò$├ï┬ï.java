package o;

import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

class ʕ$ˋ<DataType>
  implements ᓳ.ˊ
{
  private final DataType data;
  private final ﭥ<DataType> hj;
  
  public ʕ$ˋ(ﭥ<DataType> paramﭥ, DataType paramDataType)
  {
    this.hj = paramDataType;
    Object localObject;
    this.data = localObject;
  }
  
  public boolean ˎ(File paramFile)
  {
    bool2 = false;
    Object localObject = null;
    File localFile = null;
    try
    {
      paramFile = ʕ.ˊ(this.hk).ˋ(paramFile);
      localFile = paramFile;
      localObject = paramFile;
      boolean bool1 = this.hj.ˊ(this.data, paramFile);
      bool2 = bool1;
      if (paramFile != null) {
        try
        {
          paramFile.close();
          return bool1;
        }
        catch (IOException paramFile)
        {
          return bool1;
        }
      }
      return bool2;
    }
    catch (FileNotFoundException paramFile)
    {
      localObject = localFile;
      if (Log.isLoggable("DecodeJob", 3))
      {
        localObject = localFile;
        Log.d("DecodeJob", "Failed to find file to write to disk cache", paramFile);
      }
      if (localFile != null) {
        try
        {
          localFile.close();
          return false;
        }
        catch (IOException paramFile)
        {
          return false;
        }
      }
    }
    finally
    {
      if (localObject != null) {
        try
        {
          ((OutputStream)localObject).close();
        }
        catch (IOException localIOException) {}
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê.Ë
 * JD-Core Version:    0.7.0.1
 */