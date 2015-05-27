package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;

public class HMacDSAKCalculator
  implements DSAKCalculator
{
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  private BigInteger aDB;
  private final byte[] aFZ;
  private final byte[] aGf;
  private final HMac aSf;
  
  public HMacDSAKCalculator(Digest paramDigest)
  {
    this.aSf = new HMac(paramDigest);
    this.aGf = new byte[this.aSf.iO()];
    this.aFZ = new byte[this.aSf.iO()];
  }
  
  private BigInteger ᒢ(byte[] paramArrayOfByte)
  {
    BigInteger localBigInteger2 = new BigInteger(1, paramArrayOfByte);
    BigInteger localBigInteger1 = localBigInteger2;
    if (paramArrayOfByte.length * 8 > this.aDB.bitLength()) {
      localBigInteger1 = localBigInteger2.shiftRight(paramArrayOfByte.length * 8 - this.aDB.bitLength());
    }
    return localBigInteger1;
  }
  
  public boolean lA()
  {
    return true;
  }
  
  public BigInteger lB()
  {
    byte[] arrayOfByte = new byte[(this.aDB.bitLength() + 7) / 8];
    for (;;)
    {
      int i = 0;
      while (i < arrayOfByte.length)
      {
        this.aSf.update(this.aGf, 0, this.aGf.length);
        this.aSf.doFinal(this.aGf, 0);
        int j = Math.min(arrayOfByte.length - i, this.aGf.length);
        System.arraycopy(this.aGf, 0, arrayOfByte, i, j);
        i += j;
      }
      BigInteger localBigInteger = ᒢ(arrayOfByte);
      if ((localBigInteger.compareTo(ZERO) > 0) && (localBigInteger.compareTo(this.aDB) < 0)) {
        return localBigInteger;
      }
      this.aSf.update(this.aGf, 0, this.aGf.length);
      this.aSf.update((byte)0);
      this.aSf.doFinal(this.aFZ, 0);
      this.aSf.ˊ(new KeyParameter(this.aFZ));
      this.aSf.update(this.aGf, 0, this.aGf.length);
      this.aSf.doFinal(this.aGf, 0);
    }
  }
  
  public void ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte)
  {
    this.aDB = paramBigInteger1;
    Arrays.fill(this.aGf, (byte)1);
    Arrays.fill(this.aFZ, (byte)0);
    byte[] arrayOfByte1 = new byte[(paramBigInteger1.bitLength() + 7) / 8];
    paramBigInteger2 = BigIntegers.ᵎ(paramBigInteger2);
    System.arraycopy(paramBigInteger2, 0, arrayOfByte1, arrayOfByte1.length - paramBigInteger2.length, paramBigInteger2.length);
    byte[] arrayOfByte2 = new byte[(paramBigInteger1.bitLength() + 7) / 8];
    paramArrayOfByte = ᒢ(paramArrayOfByte);
    paramBigInteger2 = paramArrayOfByte;
    if (paramArrayOfByte.compareTo(paramBigInteger1) > 0) {
      paramBigInteger2 = paramArrayOfByte.subtract(paramBigInteger1);
    }
    paramBigInteger1 = BigIntegers.ᵎ(paramBigInteger2);
    System.arraycopy(paramBigInteger1, 0, arrayOfByte2, arrayOfByte2.length - paramBigInteger1.length, paramBigInteger1.length);
    this.aSf.ˊ(new KeyParameter(this.aFZ));
    this.aSf.update(this.aGf, 0, this.aGf.length);
    this.aSf.update((byte)0);
    this.aSf.update(arrayOfByte1, 0, arrayOfByte1.length);
    this.aSf.update(arrayOfByte2, 0, arrayOfByte2.length);
    this.aSf.doFinal(this.aFZ, 0);
    this.aSf.ˊ(new KeyParameter(this.aFZ));
    this.aSf.update(this.aGf, 0, this.aGf.length);
    this.aSf.doFinal(this.aGf, 0);
    this.aSf.update(this.aGf, 0, this.aGf.length);
    this.aSf.update((byte)1);
    this.aSf.update(arrayOfByte1, 0, arrayOfByte1.length);
    this.aSf.update(arrayOfByte2, 0, arrayOfByte2.length);
    this.aSf.doFinal(this.aFZ, 0);
    this.aSf.ˊ(new KeyParameter(this.aFZ));
    this.aSf.update(this.aGf, 0, this.aGf.length);
    this.aSf.doFinal(this.aGf, 0);
  }
  
  public void ˎ(BigInteger paramBigInteger, SecureRandom paramSecureRandom)
  {
    throw new IllegalStateException("Operation not supported");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.HMacDSAKCalculator
 * JD-Core Version:    0.7.0.1
 */