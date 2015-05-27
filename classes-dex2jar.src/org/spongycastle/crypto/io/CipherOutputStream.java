package org.spongycastle.crypto.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.modes.AEADBlockCipher;

public class CipherOutputStream
  extends FilterOutputStream
{
  private final byte[] aGY;
  private BufferedBlockCipher aNp;
  private StreamCipher aNq;
  private AEADBlockCipher aNr;
  private byte[] buf;
  
  private void ﹳ(int paramInt, boolean paramBoolean)
  {
    int i = paramInt;
    if (paramBoolean)
    {
      if (this.aNp != null) {
        i = this.aNp.getOutputSize(paramInt);
      } else if (this.aNr != null) {
        i = this.aNr.getOutputSize(paramInt);
      }
    }
    else if (this.aNp != null) {
      i = this.aNp.ء(paramInt);
    } else if (this.aNr != null) {
      i = this.aNr.ء(paramInt);
    }
    if ((this.buf == null) || (this.buf.length < i)) {
      this.buf = new byte[i];
    }
  }
  
  public void close()
  {
    ﹳ(0, true);
    Object localObject1 = null;
    label151:
    for (;;)
    {
      CipherIOException localCipherIOException;
      try
      {
        int i;
        if (this.aNp != null)
        {
          i = this.aNp.doFinal(this.buf, 0);
          if (i == 0) {
            break label151;
          }
          this.out.write(this.buf, 0, i);
          break label151;
        }
        if (this.aNr != null)
        {
          i = this.aNr.doFinal(this.buf, 0);
          if (i != 0) {
            this.out.write(this.buf, 0, i);
          }
        }
      }
      catch (InvalidCipherTextException localInvalidCipherTextException)
      {
        InvalidCipherTextIOException localInvalidCipherTextIOException = new InvalidCipherTextIOException("Error finalising cipher data", localInvalidCipherTextException);
      }
      catch (Exception localException)
      {
        localCipherIOException = new CipherIOException("Error closing stream: ", localException);
      }
      Object localObject2;
      try
      {
        flush();
        this.out.close();
        localObject2 = localCipherIOException;
      }
      catch (IOException localIOException)
      {
        localObject2 = localCipherIOException;
        if (localCipherIOException == null) {
          localObject2 = localIOException;
        }
      }
      if (localObject2 != null) {
        throw ((Throwable)localObject2);
      }
      return;
    }
  }
  
  public void flush()
  {
    this.out.flush();
  }
  
  public void write(int paramInt)
  {
    this.aGY[0] = ((byte)paramInt);
    if (this.aNq != null)
    {
      this.out.write(this.aNq.ʽ((byte)paramInt));
      return;
    }
    write(this.aGY, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ﹳ(paramInt2, false);
    if (this.aNp != null)
    {
      paramInt1 = this.aNp.ˋ(paramArrayOfByte, paramInt1, paramInt2, this.buf, 0);
      if (paramInt1 != 0) {
        this.out.write(this.buf, 0, paramInt1);
      }
      return;
    }
    if (this.aNr != null)
    {
      paramInt1 = this.aNr.ˋ(paramArrayOfByte, paramInt1, paramInt2, this.buf, 0);
      if (paramInt1 != 0) {
        this.out.write(this.buf, 0, paramInt1);
      }
      return;
    }
    this.aNq.ˋ(paramArrayOfByte, paramInt1, paramInt2, this.buf, 0);
    this.out.write(this.buf, 0, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.io.CipherOutputStream
 * JD-Core Version:    0.7.0.1
 */