package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Arrays;

public class TlsNullCipher
  implements TlsCipher
{
  protected TlsContext aSQ;
  protected TlsMac aUS;
  protected TlsMac aUT;
  
  public TlsNullCipher(TlsContext paramTlsContext, Digest paramDigest1, Digest paramDigest2)
  {
    int i;
    if (paramDigest1 == null) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (paramDigest2 == null) {
      j = 1;
    } else {
      j = 0;
    }
    if (i != j) {
      throw new TlsFatalAlert((short)80);
    }
    this.aSQ = paramTlsContext;
    TlsMac localTlsMac = null;
    Object localObject = null;
    if (paramDigest1 != null)
    {
      i = paramDigest1.iJ() + paramDigest2.iJ();
      localObject = TlsUtils.ᐝ(paramTlsContext, i);
      localTlsMac = new TlsMac(paramTlsContext, paramDigest1, (byte[])localObject, 0, paramDigest1.iJ());
      j = paramDigest1.iJ() + 0;
      localObject = new TlsMac(paramTlsContext, paramDigest2, (byte[])localObject, j, paramDigest2.iJ());
      if (j + paramDigest2.iJ() != i) {
        throw new TlsFatalAlert((short)80);
      }
    }
    if (paramTlsContext.mM())
    {
      this.aUS = ((TlsMac)localObject);
      this.aUT = localTlsMac;
      return;
    }
    this.aUS = localTlsMac;
    this.aUT = ((TlsMac)localObject);
  }
  
  public byte[] ˊ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aUS == null) {
      return Arrays.copyOfRange(paramArrayOfByte, paramInt1, paramInt1 + paramInt2);
    }
    byte[] arrayOfByte1 = this.aUS.ˎ(paramLong, paramShort, paramArrayOfByte, paramInt1, paramInt2);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length + paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte2, 0, paramInt2);
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, paramInt2, arrayOfByte1.length);
    return arrayOfByte2;
  }
  
  public byte[] ˋ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aUT == null) {
      return Arrays.copyOfRange(paramArrayOfByte, paramInt1, paramInt1 + paramInt2);
    }
    int i = this.aUT.getSize();
    if (paramInt2 < i) {
      throw new TlsFatalAlert((short)50);
    }
    i = paramInt2 - i;
    if (!Arrays.ｰ(Arrays.copyOfRange(paramArrayOfByte, paramInt1 + i, paramInt1 + paramInt2), this.aUT.ˎ(paramLong, paramShort, paramArrayOfByte, paramInt1, i))) {
      throw new TlsFatalAlert((short)20);
    }
    return Arrays.copyOfRange(paramArrayOfByte, paramInt1, paramInt1 + i);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsNullCipher
 * JD-Core Version:    0.7.0.1
 */