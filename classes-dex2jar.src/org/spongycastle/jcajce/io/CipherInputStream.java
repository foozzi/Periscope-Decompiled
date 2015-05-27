package org.spongycastle.jcajce.io;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.spongycastle.crypto.io.InvalidCipherTextIOException;

public class CipherInputStream
  extends FilterInputStream
{
  private int aEU;
  private int aNt;
  private boolean aNu;
  private final Cipher aWk;
  private final byte[] aWl;
  private byte[] buf;
  
  private int jY()
  {
    if (this.aNu) {
      return -1;
    }
    this.aEU = 0;
    this.aNt = 0;
    while (this.aNt == 0)
    {
      int i = this.in.read(this.aWl);
      if (i == -1)
      {
        this.buf = nz();
        if ((this.buf == null) || (this.buf.length == 0)) {
          return -1;
        }
        this.aNt = this.buf.length;
        return this.aNt;
      }
      this.buf = this.aWk.update(this.aWl, 0, i);
      if (this.buf != null) {
        this.aNt = this.buf.length;
      }
    }
    return this.aNt;
  }
  
  private byte[] nz()
  {
    try
    {
      this.aNu = true;
      byte[] arrayOfByte = this.aWk.doFinal();
      return arrayOfByte;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new InvalidCipherTextIOException("Error finalising cipher", localGeneralSecurityException);
    }
  }
  
  public int available()
  {
    return this.aNt - this.aEU;
  }
  
  public void close()
  {
    try
    {
      this.in.close();
      if (!this.aNu) {
        nz();
      }
    }
    finally
    {
      if (!this.aNu) {
        nz();
      }
    }
  }
  
  public void mark(int paramInt) {}
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    if ((this.aEU >= this.aNt) && (jY() < 0)) {
      return -1;
    }
    byte[] arrayOfByte = this.buf;
    int i = this.aEU;
    this.aEU = (i + 1);
    return arrayOfByte[i] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((this.aEU >= this.aNt) && (jY() < 0)) {
      return -1;
    }
    paramInt2 = Math.min(paramInt2, available());
    System.arraycopy(this.buf, this.aEU, paramArrayOfByte, paramInt1, paramInt2);
    this.aEU += paramInt2;
    return paramInt2;
  }
  
  public void reset() {}
  
  public long skip(long paramLong)
  {
    if (paramLong <= 0L) {
      return 0L;
    }
    int i = (int)Math.min(paramLong, available());
    this.aEU += i;
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.io.CipherInputStream
 * JD-Core Version:    0.7.0.1
 */