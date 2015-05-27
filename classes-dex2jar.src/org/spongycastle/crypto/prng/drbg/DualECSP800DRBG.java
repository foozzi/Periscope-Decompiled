package org.spongycastle.crypto.prng.drbg;

import java.math.BigInteger;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.prng.EntropySource;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECMultiplier;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.FixedPointCombMultiplier;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;

public class DualECSP800DRBG
  implements SP80090DRBG
{
  private static final BigInteger aRA;
  private static final BigInteger aRB;
  private static final BigInteger aRC;
  private static final BigInteger aRD;
  private static final BigInteger aRE;
  private static final BigInteger aRF;
  private static final BigInteger aRG;
  private static final BigInteger aRH;
  private static final BigInteger aRI;
  private static final DualECPoints[] aRJ;
  private static final BigInteger aRx = new BigInteger("6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", 16);
  private static final BigInteger aRy = new BigInteger("4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5", 16);
  private static final BigInteger aRz = new BigInteger("c97445f45cdef9f0d3e05e1e585fc297235b82b5be8ff3efca67c59852018192", 16);
  private Digest aRK;
  private int aRL;
  private int aRM;
  private int aRN;
  private ECPoint aRO;
  private ECPoint aRP;
  private byte[] aRQ;
  private int aRR;
  private ECMultiplier aRS = new FixedPointCombMultiplier();
  private EntropySource aRm;
  private long aRs;
  
  static
  {
    aRA = new BigInteger("b28ef557ba31dfcbdd21ac46e2a91e3c304f44cb87058ada2cb815151e610046", 16);
    aRB = new BigInteger("aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", 16);
    aRC = new BigInteger("3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f", 16);
    aRD = new BigInteger("8e722de3125bddb05580164bfe20b8b432216a62926c57502ceede31c47816edd1e89769124179d0b695106428815065", 16);
    aRE = new BigInteger("023b1660dd701d0839fd45eec36f9ee7b32e13b315dc02610aa1b636e346df671f790f84c5e09b05674dbb7e45c803dd", 16);
    aRF = new BigInteger("c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", 16);
    aRG = new BigInteger("11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650", 16);
    aRH = new BigInteger("1b9fa3e518d683c6b65763694ac8efbaec6fab44f2276171a42726507dd08add4c3b3f4c1ebc5b1222ddba077f722943b24c3edfa0f85fe24d0c8c01591f0be6f63", 16);
    aRI = new BigInteger("1f3bdba585295d9a1110d1df1f9430ef8442c5018976ff3437ef91b81dc0b8132c8d5c39c32d0e004a3092b7d327c0e7a4d26d2c7b69b58f9066652911e457779de", 16);
    aRJ = new DualECPoints[3];
    ECCurve.Fp localFp = (ECCurve.Fp)NISTNamedCurves.ג("P-256").iv();
    aRJ[0] = new DualECPoints(128, localFp.ᐝ(aRx, aRy), localFp.ᐝ(aRz, aRA), 1);
    localFp = (ECCurve.Fp)NISTNamedCurves.ג("P-384").iv();
    aRJ[1] = new DualECPoints(192, localFp.ᐝ(aRB, aRC), localFp.ᐝ(aRD, aRE), 1);
    localFp = (ECCurve.Fp)NISTNamedCurves.ג("P-521").iv();
    aRJ[2] = new DualECPoints(256, localFp.ᐝ(aRF, aRG), localFp.ᐝ(aRH, aRI), 1);
  }
  
  public DualECSP800DRBG(Digest paramDigest, int paramInt, EntropySource paramEntropySource, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this(aRJ, paramDigest, paramInt, paramEntropySource, paramArrayOfByte1, paramArrayOfByte2);
  }
  
  public DualECSP800DRBG(DualECPoints[] paramArrayOfDualECPoints, Digest paramDigest, int paramInt, EntropySource paramEntropySource, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.aRK = paramDigest;
    this.aRm = paramEntropySource;
    this.aRL = paramInt;
    if (Utils.ʳ(paramArrayOfByte1, 512)) {
      throw new IllegalArgumentException("Personalization string too large");
    }
    if ((paramEntropySource.ls() < paramInt) || (paramEntropySource.ls() > 4096)) {
      throw new IllegalArgumentException("EntropySource must provide between " + paramInt + " and " + 4096 + " bits");
    }
    paramEntropySource = Arrays.ˏ(paramEntropySource.lr(), paramArrayOfByte2, paramArrayOfByte1);
    int i = 0;
    while (i != paramArrayOfDualECPoints.length)
    {
      if (paramInt <= paramArrayOfDualECPoints[i].lz())
      {
        if (Utils.ˋ(paramDigest) < paramArrayOfDualECPoints[i].lz()) {
          throw new IllegalArgumentException("Requested security strength is not supported by digest");
        }
        this.aRM = paramArrayOfDualECPoints[i].lw();
        this.aRN = (paramArrayOfDualECPoints[i].lx() / 8);
        this.aRO = paramArrayOfDualECPoints[i].ly();
        this.aRP = paramArrayOfDualECPoints[i].kH();
        break;
      }
      i += 1;
    }
    if (this.aRO == null) {
      throw new IllegalArgumentException("security strength cannot be greater than 256 bits");
    }
    this.aRQ = Utils.ˊ(this.aRK, paramEntropySource, this.aRM);
    this.aRR = this.aRQ.length;
    this.aRs = 0L;
  }
  
  private byte[] ʿ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte2 == null) {
      return paramArrayOfByte1;
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    int i = 0;
    while (i != arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[i]));
      i += 1;
    }
    return arrayOfByte;
  }
  
  private BigInteger ˊ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    return this.aRS.ˋ(paramECPoint, paramBigInteger).pQ().pH().toBigInteger();
  }
  
  private byte[] ﹺ(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt % 8 == 0) {
      return paramArrayOfByte;
    }
    int k = 8 - paramInt % 8;
    int i = 0;
    paramInt = paramArrayOfByte.length - 1;
    while (paramInt >= 0)
    {
      int j = paramArrayOfByte[paramInt] & 0xFF;
      paramArrayOfByte[paramInt] = ((byte)(j << k | i >> 8 - k));
      i = j;
      paramInt -= 1;
    }
    return paramArrayOfByte;
  }
  
  public int ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, boolean paramBoolean)
  {
    int k = paramArrayOfByte1.length;
    int m = paramArrayOfByte1.length / this.aRN;
    if (Utils.ʳ(paramArrayOfByte2, 512)) {
      throw new IllegalArgumentException("Additional input too large");
    }
    if (this.aRs + m > 2147483648L) {
      return -1;
    }
    Object localObject = paramArrayOfByte2;
    if (paramBoolean)
    {
      ۦ(paramArrayOfByte2);
      localObject = null;
    }
    if (localObject != null)
    {
      paramArrayOfByte2 = Utils.ˊ(this.aRK, (byte[])localObject, this.aRM);
      paramArrayOfByte2 = new BigInteger(1, ʿ(this.aRQ, paramArrayOfByte2));
    }
    else
    {
      paramArrayOfByte2 = new BigInteger(1, this.aRQ);
    }
    Arrays.fill(paramArrayOfByte1, (byte)0);
    int i = 0;
    int j = 0;
    while (j < m)
    {
      paramArrayOfByte2 = ˊ(this.aRO, paramArrayOfByte2);
      localObject = ˊ(this.aRP, paramArrayOfByte2).toByteArray();
      if (localObject.length > this.aRN) {
        System.arraycopy(localObject, localObject.length - this.aRN, paramArrayOfByte1, i, this.aRN);
      } else {
        System.arraycopy(localObject, 0, paramArrayOfByte1, this.aRN - localObject.length + i, localObject.length);
      }
      i += this.aRN;
      this.aRs += 1L;
      j += 1;
    }
    localObject = paramArrayOfByte2;
    if (i < paramArrayOfByte1.length)
    {
      localObject = ˊ(this.aRO, paramArrayOfByte2);
      paramArrayOfByte2 = ˊ(this.aRP, (BigInteger)localObject).toByteArray();
      j = paramArrayOfByte1.length - i;
      if (paramArrayOfByte2.length > this.aRN) {
        System.arraycopy(paramArrayOfByte2, paramArrayOfByte2.length - this.aRN, paramArrayOfByte1, i, j);
      } else {
        System.arraycopy(paramArrayOfByte2, 0, paramArrayOfByte1, this.aRN - paramArrayOfByte2.length + i, j);
      }
      this.aRs += 1L;
    }
    this.aRQ = BigIntegers.ʻ(this.aRR, ˊ(this.aRO, (BigInteger)localObject));
    return k * 8;
  }
  
  public void ۦ(byte[] paramArrayOfByte)
  {
    if (Utils.ʳ(paramArrayOfByte, 512)) {
      throw new IllegalArgumentException("Additional input string too large");
    }
    byte[] arrayOfByte = this.aRm.lr();
    paramArrayOfByte = Arrays.ˏ(ﹺ(this.aRQ, this.aRM), arrayOfByte, paramArrayOfByte);
    this.aRQ = Utils.ˊ(this.aRK, paramArrayOfByte, this.aRM);
    this.aRs = 0L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.drbg.DualECSP800DRBG
 * JD-Core Version:    0.7.0.1
 */