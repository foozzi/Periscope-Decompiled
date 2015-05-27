package org.spongycastle.crypto.tls;

import java.security.SecureRandom;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.prng.RandomGenerator;
import org.spongycastle.util.Arrays;

public class TlsBlockCipher
  implements TlsCipher
{
  protected TlsContext aSQ;
  private boolean aUC;
  protected byte[] aUO;
  protected boolean aUP;
  protected BlockCipher aUQ;
  protected BlockCipher aUR;
  protected TlsMac aUS;
  protected TlsMac aUT;
  
  public TlsBlockCipher(TlsContext paramTlsContext, BlockCipher paramBlockCipher1, BlockCipher paramBlockCipher2, Digest paramDigest1, Digest paramDigest2, int paramInt)
  {
    this.aSQ = paramTlsContext;
    this.aUO = new byte[256];
    paramTlsContext.lF().nextBytes(this.aUO);
    this.aUP = TlsUtils.ˏ(paramTlsContext);
    this.aUC = paramTlsContext.lH().aUC;
    int j = paramInt * 2 + paramDigest1.iJ() + paramDigest2.iJ();
    int i = j;
    if (!this.aUP) {
      i = j + (paramBlockCipher1.getBlockSize() + paramBlockCipher2.getBlockSize());
    }
    byte[] arrayOfByte = TlsUtils.ᐝ(paramTlsContext, i);
    TlsMac localTlsMac1 = new TlsMac(paramTlsContext, paramDigest1, arrayOfByte, 0, paramDigest1.iJ());
    j = paramDigest1.iJ() + 0;
    TlsMac localTlsMac2 = new TlsMac(paramTlsContext, paramDigest2, arrayOfByte, j, paramDigest2.iJ());
    j += paramDigest2.iJ();
    KeyParameter localKeyParameter1 = new KeyParameter(arrayOfByte, j, paramInt);
    j += paramInt;
    KeyParameter localKeyParameter2 = new KeyParameter(arrayOfByte, j, paramInt);
    paramInt = j + paramInt;
    if (this.aUP)
    {
      paramDigest1 = new byte[paramBlockCipher1.getBlockSize()];
      paramDigest2 = new byte[paramBlockCipher2.getBlockSize()];
    }
    else
    {
      paramDigest1 = Arrays.copyOfRange(arrayOfByte, paramInt, paramBlockCipher1.getBlockSize() + paramInt);
      paramInt += paramBlockCipher1.getBlockSize();
      paramDigest2 = Arrays.copyOfRange(arrayOfByte, paramInt, paramBlockCipher2.getBlockSize() + paramInt);
      paramInt += paramBlockCipher2.getBlockSize();
    }
    if (paramInt != i) {
      throw new TlsFatalAlert((short)80);
    }
    if (paramTlsContext.mM())
    {
      this.aUS = localTlsMac2;
      this.aUT = localTlsMac1;
      this.aUQ = paramBlockCipher2;
      this.aUR = paramBlockCipher1;
      paramTlsContext = new ParametersWithIV(localKeyParameter2, paramDigest2);
      paramBlockCipher1 = new ParametersWithIV(localKeyParameter1, paramDigest1);
    }
    else
    {
      this.aUS = localTlsMac1;
      this.aUT = localTlsMac2;
      this.aUQ = paramBlockCipher1;
      this.aUR = paramBlockCipher2;
      paramTlsContext = new ParametersWithIV(localKeyParameter1, paramDigest1);
      paramBlockCipher1 = new ParametersWithIV(localKeyParameter2, paramDigest2);
    }
    this.aUQ.ˊ(true, paramTlsContext);
    this.aUR.ˊ(false, paramBlockCipher1);
  }
  
  protected int ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt1 + paramInt2;
    int n = paramArrayOfByte[(i1 - 1)];
    int i = (n & 0xFF) + 1;
    int k = 0;
    int j = 0;
    int m = 0;
    if (((TlsUtils.ˎ(this.aSQ)) && (i > paramInt3)) || (paramInt4 + i > paramInt2))
    {
      paramInt1 = 0;
      paramInt2 = k;
      paramInt3 = j;
    }
    else
    {
      paramInt1 = i1 - i;
      paramInt2 = m;
      do
      {
        paramInt3 = paramInt1 + 1;
        paramInt4 = (byte)(paramArrayOfByte[paramInt1] ^ n | paramInt2);
        paramInt2 = paramInt4;
        paramInt1 = paramInt3;
      } while (paramInt3 < i1);
      j = i;
      paramInt1 = i;
      paramInt2 = j;
      paramInt3 = paramInt4;
      if (paramInt4 != 0)
      {
        paramInt1 = 0;
        paramInt3 = paramInt4;
        paramInt2 = j;
      }
    }
    paramArrayOfByte = this.aUO;
    for (;;)
    {
      paramInt4 = paramInt2;
      if (paramInt4 >= 256) {
        break;
      }
      paramInt2 = paramInt4 + 1;
      paramInt3 = (byte)(paramArrayOfByte[paramInt4] ^ n | paramInt3);
    }
    paramArrayOfByte[0] = ((byte)(paramArrayOfByte[0] ^ paramInt3));
    return paramInt1;
  }
  
  public byte[] ˊ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int n = this.aUQ.getBlockSize();
    int m = this.aUS.getSize();
    Object localObject = this.aSQ.lJ();
    int i = paramInt2;
    int j = i;
    if (!this.aUC) {
      j = i + m;
    }
    i = n - 1 - j % n;
    int k = i;
    if (!((ProtocolVersion)localObject).mo())
    {
      k = i;
      if (!((ProtocolVersion)localObject).mp())
      {
        j = (255 - i) / n;
        k = i + ˋ(this.aSQ.lG(), j) * n;
      }
    }
    j = paramInt2 + m + k + 1;
    i = j;
    if (this.aUP) {
      i = j + n;
    }
    localObject = new byte[i];
    i = 0;
    if (this.aUP)
    {
      byte[] arrayOfByte = new byte[n];
      this.aSQ.lF().nextBytes(arrayOfByte);
      this.aUQ.ˊ(true, new ParametersWithIV(null, arrayOfByte));
      System.arraycopy(arrayOfByte, 0, localObject, 0, n);
      i = n + 0;
    }
    System.arraycopy(paramArrayOfByte, paramInt1, localObject, i, paramInt2);
    m = i + paramInt2;
    j = m;
    if (!this.aUC)
    {
      paramArrayOfByte = this.aUS.ˎ(paramLong, paramShort, paramArrayOfByte, paramInt1, paramInt2);
      System.arraycopy(paramArrayOfByte, 0, localObject, m, paramArrayOfByte.length);
      j = m + paramArrayOfByte.length;
    }
    paramInt1 = 0;
    while (paramInt1 <= k)
    {
      paramInt2 = j + 1;
      localObject[j] = ((byte)k);
      paramInt1 += 1;
      j = paramInt2;
    }
    while (i < j)
    {
      this.aUQ.ˊ((byte[])localObject, i, (byte[])localObject, i);
      i += n;
    }
    if (this.aUC)
    {
      paramArrayOfByte = this.aUS.ˎ(paramLong, paramShort, (byte[])localObject, 0, j);
      System.arraycopy(paramArrayOfByte, 0, localObject, j, paramArrayOfByte.length);
      paramInt1 = paramArrayOfByte.length;
    }
    return localObject;
  }
  
  protected int ˋ(SecureRandom paramSecureRandom, int paramInt)
  {
    return Math.min(ᒣ(paramSecureRandom.nextInt()), paramInt);
  }
  
  public byte[] ˋ(long paramLong, short paramShort, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int m = this.aUR.getBlockSize();
    int k = this.aUT.getSize();
    if (this.aUC) {
      i = m + k;
    } else {
      i = Math.max(m, k + 1);
    }
    int j = i;
    if (this.aUP) {
      j = i + m;
    }
    if (paramInt2 < j) {
      throw new TlsFatalAlert((short)50);
    }
    j = paramInt2;
    int i = j;
    if (this.aUC) {
      i = j - k;
    }
    if (i % m != 0) {
      throw new TlsFatalAlert((short)21);
    }
    byte[] arrayOfByte;
    if (this.aUC)
    {
      j = paramInt1 + paramInt2;
      arrayOfByte = Arrays.copyOfRange(paramArrayOfByte, j - k, j);
      if (!Arrays.ｰ(this.aUT.ˎ(paramLong, paramShort, paramArrayOfByte, paramInt1, paramInt2 - k), arrayOfByte)) {
        paramInt2 = 1;
      } else {
        paramInt2 = 0;
      }
      if (paramInt2 != 0) {
        throw new TlsFatalAlert((short)20);
      }
    }
    j = i;
    paramInt2 = paramInt1;
    if (this.aUP)
    {
      this.aUR.ˊ(false, new ParametersWithIV(null, paramArrayOfByte, paramInt1, m));
      paramInt2 = paramInt1 + m;
      j = i - m;
    }
    paramInt1 = 0;
    while (paramInt1 < j)
    {
      this.aUR.ˊ(paramArrayOfByte, paramInt2 + paramInt1, paramArrayOfByte, paramInt2 + paramInt1);
      paramInt1 += m;
    }
    if (this.aUC) {
      paramInt1 = 0;
    } else {
      paramInt1 = k;
    }
    m = ˊ(paramArrayOfByte, paramInt2, j, m, paramInt1);
    i = j - m;
    paramInt1 = i;
    if (!this.aUC)
    {
      i -= k;
      paramInt1 = paramInt2 + i;
      arrayOfByte = Arrays.copyOfRange(paramArrayOfByte, paramInt1, paramInt1 + k);
      if (!Arrays.ｰ(this.aUT.ˊ(paramLong, paramShort, paramArrayOfByte, paramInt2, i, j - k, this.aUO), arrayOfByte)) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      }
      if (paramInt1 == 0)
      {
        paramInt1 = i;
        if (m != 0) {}
      }
      else
      {
        throw new TlsFatalAlert((short)20);
      }
    }
    return Arrays.copyOfRange(paramArrayOfByte, paramInt2, paramInt2 + paramInt1);
  }
  
  protected int ᒣ(int paramInt)
  {
    if (paramInt == 0) {
      return 32;
    }
    int i = 0;
    while ((paramInt & 0x1) == 0)
    {
      i += 1;
      paramInt >>= 1;
    }
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsBlockCipher
 * JD-Core Version:    0.7.0.1
 */