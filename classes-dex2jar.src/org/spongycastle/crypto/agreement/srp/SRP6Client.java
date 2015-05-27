package org.spongycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.Digest;

public class SRP6Client
{
  protected BigInteger aFB;
  protected Digest aFH;
  protected BigInteger aFK;
  protected BigInteger aFL;
  protected BigInteger aFM;
  protected BigInteger aFN;
  protected BigInteger aFO;
  protected BigInteger aFP;
  protected BigInteger aFQ;
  protected SecureRandom aFa;
  
  private BigInteger iT()
  {
    BigInteger localBigInteger2 = SRP6Util.ˊ(this.aFH, this.aFK, this.aFB);
    BigInteger localBigInteger1 = this.aFP.multiply(this.aFO).add(this.aFL);
    localBigInteger2 = this.aFB.modPow(this.aFO, this.aFK).multiply(localBigInteger2).mod(this.aFK);
    return this.aFN.subtract(localBigInteger2).mod(this.aFK).modPow(localBigInteger1, this.aFK);
  }
  
  protected BigInteger iS()
  {
    return SRP6Util.ˊ(this.aFH, this.aFK, this.aFB, this.aFa);
  }
  
  public BigInteger ˊ(BigInteger paramBigInteger)
  {
    this.aFN = SRP6Util.ˊ(this.aFK, paramBigInteger);
    this.aFP = SRP6Util.ˊ(this.aFH, this.aFK, this.aFM, this.aFN);
    this.aFQ = iT();
    return this.aFQ;
  }
  
  public BigInteger ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    this.aFO = SRP6Util.ˊ(this.aFH, this.aFK, paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3);
    this.aFL = iS();
    this.aFM = this.aFB.modPow(this.aFL, this.aFK);
    return this.aFM;
  }
  
  public void ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, Digest paramDigest, SecureRandom paramSecureRandom)
  {
    this.aFK = paramBigInteger1;
    this.aFB = paramBigInteger2;
    this.aFH = paramDigest;
    this.aFa = paramSecureRandom;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.srp.SRP6Client
 * JD-Core Version:    0.7.0.1
 */