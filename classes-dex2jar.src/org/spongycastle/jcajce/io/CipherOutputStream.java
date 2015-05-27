package org.spongycastle.jcajce.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.spongycastle.crypto.io.InvalidCipherTextIOException;

public class CipherOutputStream
  extends FilterOutputStream
{
  private final byte[] aGY;
  private final Cipher aWk;
  
  public void close()
  {
    Object localObject1 = null;
    Object localObject2;
    IOException localIOException1;
    try
    {
      localObject2 = this.aWk.doFinal();
      if (localObject2 != null) {
        this.out.write((byte[])localObject2);
      }
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      InvalidCipherTextIOException localInvalidCipherTextIOException = new InvalidCipherTextIOException("Error during cipher finalisation", localGeneralSecurityException);
    }
    catch (Exception localException)
    {
      localIOException1 = new IOException("Error closing stream: " + localException);
    }
    try
    {
      flush();
      this.out.close();
      localObject2 = localIOException1;
    }
    catch (IOException localIOException2)
    {
      localObject2 = localIOException1;
      if (localIOException1 == null) {
        localObject2 = localIOException2;
      }
    }
    if (localObject2 != null) {
      throw ((Throwable)localObject2);
    }
  }
  
  public void flush()
  {
    this.out.flush();
  }
  
  public void write(int paramInt)
  {
    this.aGY[0] = ((byte)paramInt);
    write(this.aGY, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte = this.aWk.update(paramArrayOfByte, paramInt1, paramInt2);
    if (paramArrayOfByte != null) {
      this.out.write(paramArrayOfByte);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.io.CipherOutputStream
 * JD-Core Version:    0.7.0.1
 */