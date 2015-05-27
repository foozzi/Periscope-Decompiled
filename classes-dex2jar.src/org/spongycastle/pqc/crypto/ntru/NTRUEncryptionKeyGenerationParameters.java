package org.spongycastle.pqc.crypto.ntru;

import java.security.SecureRandom;
import java.util.Arrays;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA512Digest;

public class NTRUEncryptionKeyGenerationParameters
  extends KeyGenerationParameters
  implements Cloneable
{
  public static final NTRUEncryptionKeyGenerationParameters bgA;
  public static final NTRUEncryptionKeyGenerationParameters bgB;
  public static final NTRUEncryptionKeyGenerationParameters bgv;
  public static final NTRUEncryptionKeyGenerationParameters bgw;
  public static final NTRUEncryptionKeyGenerationParameters bgx;
  public static final NTRUEncryptionKeyGenerationParameters bgy;
  public static final NTRUEncryptionKeyGenerationParameters bgz;
  public int aKM;
  public int aMJ;
  public int bgC;
  public int bgD;
  public int bgE;
  public int bgF;
  public int bgG;
  public int bgH;
  public int bgI;
  public int bgJ;
  public int bgK;
  public int bgL;
  int bgM;
  public int bgN;
  public int bgO;
  public int bgP;
  int bgQ;
  public int bgR;
  public int bgS;
  public int bgT;
  public boolean bgU;
  public byte[] bgV;
  public boolean bgW;
  public boolean bgX;
  public int bgY;
  public int bgo;
  public Digest bgs;
  
  static
  {
    Object localObject = new SHA512Digest();
    bgv = new NTRUEncryptionKeyGenerationParameters(1087, 2048, 120, 120, 256, 13, 25, 14, true, new byte[] { 0, 6, 3 }, true, false, (Digest)localObject);
    localObject = new SHA512Digest();
    bgw = new NTRUEncryptionKeyGenerationParameters(1171, 2048, 106, 106, 256, 13, 20, 15, true, new byte[] { 0, 6, 4 }, true, false, (Digest)localObject);
    localObject = new SHA512Digest();
    bgx = new NTRUEncryptionKeyGenerationParameters(1499, 2048, 79, 79, 256, 13, 17, 19, true, new byte[] { 0, 6, 5 }, true, false, (Digest)localObject);
    localObject = new SHA256Digest();
    bgy = new NTRUEncryptionKeyGenerationParameters(439, 2048, 146, 130, 128, 9, 32, 9, true, new byte[] { 0, 7, 101 }, true, false, (Digest)localObject);
    localObject = new SHA256Digest();
    bgz = new NTRUEncryptionKeyGenerationParameters(439, 2048, 9, 8, 5, 130, 128, 9, 32, 9, true, new byte[] { 0, 7, 101 }, true, true, (Digest)localObject);
    localObject = new SHA512Digest();
    bgA = new NTRUEncryptionKeyGenerationParameters(743, 2048, 248, 220, 256, 10, 27, 14, true, new byte[] { 0, 7, 105 }, false, false, (Digest)localObject);
    localObject = new SHA512Digest();
    bgB = new NTRUEncryptionKeyGenerationParameters(743, 2048, 11, 11, 15, 220, 256, 10, 27, 14, true, new byte[] { 0, 7, 105 }, false, true, (Digest)localObject);
  }
  
  public NTRUEncryptionKeyGenerationParameters(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, boolean paramBoolean1, byte[] paramArrayOfByte, boolean paramBoolean2, boolean paramBoolean3, Digest paramDigest)
  {
    super(new SecureRandom(), paramInt7);
    this.aMJ = paramInt1;
    this.bgC = paramInt2;
    this.bgE = paramInt3;
    this.bgF = paramInt4;
    this.bgG = paramInt5;
    this.bgO = paramInt7;
    this.bgR = paramInt6;
    this.aKM = paramInt8;
    this.bgo = paramInt9;
    this.bgT = paramInt10;
    this.bgU = paramBoolean1;
    this.bgV = paramArrayOfByte;
    this.bgW = paramBoolean2;
    this.bgX = paramBoolean3;
    this.bgY = 1;
    this.bgs = paramDigest;
    init();
  }
  
  public NTRUEncryptionKeyGenerationParameters(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean1, byte[] paramArrayOfByte, boolean paramBoolean2, boolean paramBoolean3, Digest paramDigest)
  {
    super(new SecureRandom(), paramInt5);
    this.aMJ = paramInt1;
    this.bgC = paramInt2;
    this.bgD = paramInt3;
    this.bgO = paramInt5;
    this.bgR = paramInt4;
    this.aKM = paramInt6;
    this.bgo = paramInt7;
    this.bgT = paramInt8;
    this.bgU = paramBoolean1;
    this.bgV = paramArrayOfByte;
    this.bgW = paramBoolean2;
    this.bgX = paramBoolean3;
    this.bgY = 0;
    this.bgs = paramDigest;
    init();
  }
  
  private void init()
  {
    this.bgH = this.bgD;
    this.bgI = this.bgE;
    this.bgJ = this.bgF;
    this.bgK = this.bgG;
    this.bgL = (this.aMJ / 3);
    this.bgM = 1;
    this.bgN = (this.aMJ * 3 / 2 / 8 - this.bgM - this.bgO / 8 - 1);
    this.bgP = ((this.aMJ * 3 / 2 + 7) / 8 * 8 + 1);
    this.bgQ = (this.aMJ - 1);
    this.bgS = this.bgO;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (NTRUEncryptionKeyGenerationParameters)paramObject;
    if (this.aMJ != paramObject.aMJ) {
      return false;
    }
    if (this.bgP != paramObject.bgP) {
      return false;
    }
    if (this.bgQ != paramObject.bgQ) {
      return false;
    }
    if (this.aKM != paramObject.aKM) {
      return false;
    }
    if (this.bgO != paramObject.bgO) {
      return false;
    }
    if (this.bgD != paramObject.bgD) {
      return false;
    }
    if (this.bgE != paramObject.bgE) {
      return false;
    }
    if (this.bgF != paramObject.bgF) {
      return false;
    }
    if (this.bgG != paramObject.bgG) {
      return false;
    }
    if (this.bgL != paramObject.bgL) {
      return false;
    }
    if (this.bgR != paramObject.bgR) {
      return false;
    }
    if (this.bgH != paramObject.bgH) {
      return false;
    }
    if (this.bgI != paramObject.bgI) {
      return false;
    }
    if (this.bgJ != paramObject.bgJ) {
      return false;
    }
    if (this.bgK != paramObject.bgK) {
      return false;
    }
    if (this.bgX != paramObject.bgX) {
      return false;
    }
    if (this.bgs == null)
    {
      if (paramObject.bgs != null) {
        return false;
      }
    }
    else if (!this.bgs.iG().equals(paramObject.bgs.iG())) {
      return false;
    }
    if (this.bgU != paramObject.bgU) {
      return false;
    }
    if (this.bgM != paramObject.bgM) {
      return false;
    }
    if (this.bgN != paramObject.bgN) {
      return false;
    }
    if (this.bgT != paramObject.bgT) {
      return false;
    }
    if (this.bgo != paramObject.bgo) {
      return false;
    }
    if (!Arrays.equals(this.bgV, paramObject.bgV)) {
      return false;
    }
    if (this.bgS != paramObject.bgS) {
      return false;
    }
    if (this.bgY != paramObject.bgY) {
      return false;
    }
    if (this.bgC != paramObject.bgC) {
      return false;
    }
    return this.bgW == paramObject.bgW;
  }
  
  public int hashCode()
  {
    int n = this.aMJ;
    int i1 = this.bgP;
    int i2 = this.bgQ;
    int i3 = this.aKM;
    int i4 = this.bgO;
    int i5 = this.bgD;
    int i6 = this.bgE;
    int i7 = this.bgF;
    int i8 = this.bgG;
    int i9 = this.bgL;
    int i10 = this.bgR;
    int i11 = this.bgH;
    int i12 = this.bgI;
    int i13 = this.bgJ;
    int i14 = this.bgK;
    int i;
    if (this.bgX) {
      i = 1231;
    } else {
      i = 1237;
    }
    int j;
    if (this.bgs == null) {
      j = 0;
    } else {
      j = this.bgs.iG().hashCode();
    }
    int k;
    if (this.bgU) {
      k = 1231;
    } else {
      k = 1237;
    }
    int i15 = this.bgM;
    int i16 = this.bgN;
    int i17 = this.bgT;
    int i18 = this.bgo;
    int i19 = Arrays.hashCode(this.bgV);
    int i20 = this.bgS;
    int i21 = this.bgY;
    int i22 = this.bgC;
    int m;
    if (this.bgW) {
      m = 1231;
    } else {
      m = 1237;
    }
    return ((((((((((((((((((((((((((n + 31) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i9) * 31 + i10) * 31 + i11) * 31 + i12) * 31 + i13) * 31 + i14) * 31 + i) * 31 + j) * 31 + k) * 31 + i15) * 31 + i16) * 31 + i17) * 31 + i18) * 31 + i19) * 31 + i20) * 31 + i21) * 31 + i22) * 31 + m;
  }
  
  public NTRUEncryptionParameters rx()
  {
    if (this.bgY == 0) {
      return new NTRUEncryptionParameters(this.aMJ, this.bgC, this.bgD, this.bgR, this.bgO, this.aKM, this.bgo, this.bgT, this.bgU, this.bgV, this.bgW, this.bgX, this.bgs);
    }
    return new NTRUEncryptionParameters(this.aMJ, this.bgC, this.bgE, this.bgF, this.bgG, this.bgR, this.bgO, this.aKM, this.bgo, this.bgT, this.bgU, this.bgV, this.bgW, this.bgX, this.bgs);
  }
  
  public NTRUEncryptionKeyGenerationParameters ry()
  {
    if (this.bgY == 0) {
      return new NTRUEncryptionKeyGenerationParameters(this.aMJ, this.bgC, this.bgD, this.bgR, this.bgO, this.aKM, this.bgo, this.bgT, this.bgU, this.bgV, this.bgW, this.bgX, this.bgs);
    }
    return new NTRUEncryptionKeyGenerationParameters(this.aMJ, this.bgC, this.bgE, this.bgF, this.bgG, this.bgR, this.bgO, this.aKM, this.bgo, this.bgT, this.bgU, this.bgV, this.bgW, this.bgX, this.bgs);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("EncryptionParameters(N=" + this.aMJ + " q=" + this.bgC);
    if (this.bgY == 0) {
      localStringBuilder.append(" polyType=SIMPLE df=" + this.bgD);
    } else {
      localStringBuilder.append(" polyType=PRODUCT df1=" + this.bgE + " df2=" + this.bgF + " df3=" + this.bgG);
    }
    localStringBuilder.append(" dm0=" + this.bgR + " db=" + this.bgO + " c=" + this.aKM + " minCallsR=" + this.bgo + " minCallsMask=" + this.bgT + " hashSeed=" + this.bgU + " hashAlg=" + this.bgs + " oid=" + Arrays.toString(this.bgV) + " sparse=" + this.bgW + ")");
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUEncryptionKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */