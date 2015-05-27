package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

public class TlsStreamCipher
  implements TlsCipher
{
  protected TlsContext aSQ;
  protected TlsMac aUS;
  protected TlsMac aUT;
  protected StreamCipher aVX;
  protected StreamCipher aVY;
  protected boolean aVZ;
  
  public TlsStreamCipher(TlsContext paramTlsContext, StreamCipher paramStreamCipher1, StreamCipher paramStreamCipher2, Digest paramDigest1, Digest paramDigest2, int paramInt, boolean paramBoolean)
  {
    boolean bool = paramTlsContext.mM();
    this.aSQ = paramTlsContext;
    this.aVZ = paramBoolean;
    this.aVX = paramStreamCipher1;
    this.aVY = paramStreamCipher2;
    int i = paramInt * 2 + paramDigest1.iJ() + paramDigest2.iJ();
    byte[] arrayOfByte = TlsUtils.ᐝ(paramTlsContext, i);
    TlsMac localTlsMac1 = new TlsMac(paramTlsContext, paramDigest1, arrayOfByte, 0, paramDigest1.iJ());
    int j = paramDigest1.iJ() + 0;
    TlsMac localTlsMac2 = new TlsMac(paramTlsContext, paramDigest2, arrayOfByte, j, paramDigest2.iJ());
    j += paramDigest2.iJ();
    paramTlsContext = new KeyParameter(arrayOfByte, j, paramInt);
    j += paramInt;
    paramDigest1 = new KeyParameter(arrayOfByte, j, paramInt);
    if (j + paramInt != i) {
      throw new TlsFatalAlert((short)80);
    }
    if (bool)
    {
      this.aUS = localTlsMac2;
      this.aUT = localTlsMac1;
      this.aVX = paramStreamCipher2;
      this.aVY = paramStreamCipher1;
      paramStreamCipher1 = paramDigest1;
    }
    else
    {
      this.aUS = localTlsMac1;
      this.aUT = localTlsMac2;
      this.aVX = paramStreamCipher1;
      this.aVY = paramStreamCipher2;
      paramStreamCipher1 = paramTlsContext;
      paramTlsContext = paramDigest1;
    }
    paramDigest1 = paramStreamCipher1;
    paramStreamCipher2 = paramTlsContext;
    if (paramBoolean)
    {
      paramStreamCipher2 = new byte[8];
      paramDigest1 = new ParametersWithIV(paramStreamCipher1, paramStreamCipher2);
      paramStreamCipher2 = new ParametersWithIV(paramTlsContext, paramStreamCipher2);
    }
    this.aVX.ˊ(true, paramDigest1);
    this.aVY.ˊ(false, paramStreamCipher2);
  }
  
  private void ˊ(long paramLong, short paramShort, byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3, int paramInt4)
  {
    if (!Arrays.ｰ(Arrays.copyOfRange(paramArrayOfByte1, paramInt1, paramInt2), this.aUT.ˎ(paramLong, paramShort, paramArrayOfByte2, paramInt3, paramInt4))) {
      throw new TlsFatalAlert((short)20);
    }
  }
  
  private void ˊ(StreamCipher paramStreamCipher, boolean paramBoolean, long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    TlsUtils.ᐝ(paramLong, arrayOfByte, 0);
    paramStreamCipher.ˊ(paramBoolean, new ParametersWithIV(null, arrayOfByte));
  }
  
  public byte[] ˊ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aVZ) {
      ˊ(this.aVX, true, paramLong);
    }
    byte[] arrayOfByte = new byte[this.aUS.getSize() + paramInt2];
    this.aVX.ˋ(paramArrayOfByte, paramInt1, paramInt2, arrayOfByte, 0);
    paramArrayOfByte = this.aUS.ˎ(paramLong, paramShort, paramArrayOfByte, paramInt1, paramInt2);
    this.aVX.ˋ(paramArrayOfByte, 0, paramArrayOfByte.length, arrayOfByte, paramInt2);
    return arrayOfByte;
  }
  
  public byte[] ˋ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aVZ) {
      ˊ(this.aVY, false, paramLong);
    }
    int i = this.aUT.getSize();
    if (paramInt2 < i) {
      throw new TlsFatalAlert((short)50);
    }
    i = paramInt2 - i;
    byte[] arrayOfByte = new byte[paramInt2];
    this.aVY.ˋ(paramArrayOfByte, paramInt1, paramInt2, arrayOfByte, 0);
    ˊ(paramLong, paramShort, arrayOfByte, i, paramInt2, arrayOfByte, 0, i);
    return Arrays.copyOfRange(arrayOfByte, 0, i);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsStreamCipher
 * JD-Core Version:    0.7.0.1
 */