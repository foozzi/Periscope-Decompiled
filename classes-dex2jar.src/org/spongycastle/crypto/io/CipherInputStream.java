package org.spongycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.SkippingCipher;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.util.Arrays;

public class CipherInputStream
  extends FilterInputStream
{
  private int aEU;
  private SkippingCipher aNn;
  private byte[] aNo;
  private BufferedBlockCipher aNp;
  private StreamCipher aNq;
  private AEADBlockCipher aNr;
  private byte[] aNs;
  private int aNt;
  private boolean aNu;
  private long aNv;
  private int aNw;
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
      int i = this.in.read(this.aNo);
      if (i == -1)
      {
        jZ();
        if (this.aNt == 0) {
          return -1;
        }
        return this.aNt;
      }
      try
      {
        ﹳ(i, false);
        if (this.aNp != null)
        {
          this.aNt = this.aNp.ˋ(this.aNo, 0, i, this.buf, 0);
        }
        else if (this.aNr != null)
        {
          this.aNt = this.aNr.ˋ(this.aNo, 0, i, this.buf, 0);
        }
        else
        {
          this.aNq.ˋ(this.aNo, 0, i, this.buf, 0);
          this.aNt = i;
        }
      }
      catch (Exception localException)
      {
        throw new CipherIOException("Error processing stream ", localException);
      }
    }
    return this.aNt;
  }
  
  private void jZ()
  {
    try
    {
      this.aNu = true;
      ﹳ(0, true);
      if (this.aNp != null) {
        this.aNt = this.aNp.doFinal(this.buf, 0);
      } else if (this.aNr != null) {
        this.aNt = this.aNr.doFinal(this.buf, 0);
      } else {
        this.aNt = 0;
      }
      return;
    }
    catch (InvalidCipherTextException localInvalidCipherTextException)
    {
      throw new InvalidCipherTextIOException("Error finalising cipher", localInvalidCipherTextException);
    }
    catch (Exception localException)
    {
      throw new IOException("Error finalising cipher " + localException);
    }
  }
  
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
        jZ();
      }
    }
    finally
    {
      if (!this.aNu) {
        jZ();
      }
    }
    this.aNw = 0;
    this.aNv = 0L;
    if (this.aNs != null)
    {
      Arrays.fill(this.aNs, (byte)0);
      this.aNs = null;
    }
    if (this.buf != null)
    {
      Arrays.fill(this.buf, (byte)0);
      this.buf = null;
    }
    Arrays.fill(this.aNo, (byte)0);
  }
  
  public void mark(int paramInt)
  {
    this.in.mark(paramInt);
    if (this.aNn != null) {
      this.aNv = this.aNn.getPosition();
    }
    if (this.buf != null)
    {
      this.aNs = new byte[this.buf.length];
      System.arraycopy(this.buf, 0, this.aNs, 0, this.buf.length);
    }
    this.aNw = this.aEU;
  }
  
  public boolean markSupported()
  {
    if (this.aNn != null) {
      return this.in.markSupported();
    }
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
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
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
  
  public void reset()
  {
    if (this.aNn == null) {
      throw new IOException("cipher must implement SkippingCipher to be used with reset()");
    }
    this.in.reset();
    this.aNn.ו(this.aNv);
    if (this.aNs != null) {
      this.buf = this.aNs;
    }
    this.aEU = this.aNw;
  }
  
  public long skip(long paramLong)
  {
    if (paramLong <= 0L) {
      return 0L;
    }
    if (this.aNn != null)
    {
      i = available();
      if (paramLong <= i)
      {
        this.aEU = ((int)(this.aEU + paramLong));
        return paramLong;
      }
      this.aEU = this.aNt;
      paramLong = this.in.skip(paramLong - i);
      if (paramLong != this.aNn.skip(paramLong)) {
        throw new IOException("Unable to skip cipher " + paramLong + " bytes.");
      }
      return i + paramLong;
    }
    int i = (int)Math.min(paramLong, available());
    this.aEU += i;
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.io.CipherInputStream
 * JD-Core Version:    0.7.0.1
 */