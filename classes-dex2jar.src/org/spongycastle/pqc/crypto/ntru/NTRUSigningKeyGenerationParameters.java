package org.spongycastle.pqc.crypto.ntru;

import java.security.SecureRandom;
import java.text.DecimalFormat;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA512Digest;

public class NTRUSigningKeyGenerationParameters
  extends KeyGenerationParameters
  implements Cloneable
{
  public static final NTRUSigningKeyGenerationParameters bhg = new NTRUSigningKeyGenerationParameters(439, 2048, 146, 1, 1, 0.165D, 490.0D, 280.0D, false, true, 0, new SHA256Digest());
  public static final NTRUSigningKeyGenerationParameters bhh = new NTRUSigningKeyGenerationParameters(439, 2048, 9, 8, 5, 1, 1, 0.165D, 490.0D, 280.0D, false, true, 0, new SHA256Digest());
  public static final NTRUSigningKeyGenerationParameters bhi = new NTRUSigningKeyGenerationParameters(743, 2048, 248, 1, 1, 0.127D, 560.0D, 360.0D, true, false, 0, new SHA512Digest());
  public static final NTRUSigningKeyGenerationParameters bhj = new NTRUSigningKeyGenerationParameters(743, 2048, 11, 11, 15, 1, 1, 0.127D, 560.0D, 360.0D, true, false, 0, new SHA512Digest());
  public static final NTRUSigningKeyGenerationParameters bhk = new NTRUSigningKeyGenerationParameters(157, 256, 29, 1, 1, 0.38D, 200.0D, 80.0D, false, false, 0, new SHA256Digest());
  public static final NTRUSigningKeyGenerationParameters bhl = new NTRUSigningKeyGenerationParameters(157, 256, 5, 5, 8, 1, 1, 0.38D, 200.0D, 80.0D, false, false, 0, new SHA256Digest());
  public int aMJ;
  public int aOn;
  public int bgC;
  public boolean bgW;
  public int bgY;
  public Digest bgs;
  public int bhA;
  public int bhm;
  public int bhn;
  public int bho;
  public int bhp;
  double bhq;
  public double bhr;
  double bhs;
  public double bht;
  public int bhu = 100;
  double bhv;
  public double bhw;
  public boolean bhx;
  public int bhy;
  int bhz = 6;
  
  public NTRUSigningKeyGenerationParameters(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, double paramDouble1, double paramDouble2, double paramDouble3, boolean paramBoolean1, boolean paramBoolean2, int paramInt6, Digest paramDigest)
  {
    super(new SecureRandom(), paramInt1);
    this.aMJ = paramInt1;
    this.bgC = paramInt2;
    this.aOn = paramInt3;
    this.bhp = paramInt4;
    this.bhy = paramInt5;
    this.bhq = paramDouble1;
    this.bhs = paramDouble2;
    this.bhv = paramDouble3;
    this.bhx = paramBoolean1;
    this.bgW = paramBoolean2;
    this.bhA = paramInt6;
    this.bgs = paramDigest;
    this.bgY = 0;
    init();
  }
  
  public NTRUSigningKeyGenerationParameters(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, double paramDouble1, double paramDouble2, double paramDouble3, boolean paramBoolean1, boolean paramBoolean2, int paramInt8, Digest paramDigest)
  {
    super(new SecureRandom(), paramInt1);
    this.aMJ = paramInt1;
    this.bgC = paramInt2;
    this.bhm = paramInt3;
    this.bhn = paramInt4;
    this.bho = paramInt5;
    this.bhp = paramInt6;
    this.bhy = paramInt7;
    this.bhq = paramDouble1;
    this.bhs = paramDouble2;
    this.bhv = paramDouble3;
    this.bhx = paramBoolean1;
    this.bgW = paramBoolean2;
    this.bhA = paramInt8;
    this.bgs = paramDigest;
    this.bgY = 1;
    init();
  }
  
  private void init()
  {
    this.bhr = (this.bhq * this.bhq);
    this.bht = (this.bhs * this.bhs);
    this.bhw = (this.bhv * this.bhv);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (!(paramObject instanceof NTRUSigningKeyGenerationParameters)) {
      return false;
    }
    paramObject = (NTRUSigningKeyGenerationParameters)paramObject;
    if (this.bhp != paramObject.bhp) {
      return false;
    }
    if (this.aMJ != paramObject.aMJ) {
      return false;
    }
    if (this.bhy != paramObject.bhy) {
      return false;
    }
    if (Double.doubleToLongBits(this.bhq) != Double.doubleToLongBits(paramObject.bhq)) {
      return false;
    }
    if (Double.doubleToLongBits(this.bhr) != Double.doubleToLongBits(paramObject.bhr)) {
      return false;
    }
    if (this.bhz != paramObject.bhz) {
      return false;
    }
    if (this.aOn != paramObject.aOn) {
      return false;
    }
    if (this.bhm != paramObject.bhm) {
      return false;
    }
    if (this.bhn != paramObject.bhn) {
      return false;
    }
    if (this.bho != paramObject.bho) {
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
    if (this.bhA != paramObject.bhA) {
      return false;
    }
    if (Double.doubleToLongBits(this.bhv) != Double.doubleToLongBits(paramObject.bhv)) {
      return false;
    }
    if (Double.doubleToLongBits(this.bhw) != Double.doubleToLongBits(paramObject.bhw)) {
      return false;
    }
    if (Double.doubleToLongBits(this.bhs) != Double.doubleToLongBits(paramObject.bhs)) {
      return false;
    }
    if (Double.doubleToLongBits(this.bht) != Double.doubleToLongBits(paramObject.bht)) {
      return false;
    }
    if (this.bgY != paramObject.bgY) {
      return false;
    }
    if (this.bhx != paramObject.bhx) {
      return false;
    }
    if (this.bgC != paramObject.bgC) {
      return false;
    }
    if (this.bhu != paramObject.bhu) {
      return false;
    }
    return this.bgW == paramObject.bgW;
  }
  
  public int hashCode()
  {
    int m = this.bhp;
    int n = this.aMJ;
    int i1 = this.bhy;
    long l = Double.doubleToLongBits(this.bhq);
    int i2 = (int)(l >>> 32 ^ l);
    l = Double.doubleToLongBits(this.bhr);
    int i3 = (int)(l >>> 32 ^ l);
    int i4 = this.bhz;
    int i5 = this.aOn;
    int i6 = this.bhm;
    int i7 = this.bhn;
    int i8 = this.bho;
    int i;
    if (this.bgs == null) {
      i = 0;
    } else {
      i = this.bgs.iG().hashCode();
    }
    int i9 = this.bhA;
    l = Double.doubleToLongBits(this.bhv);
    int i10 = (int)(l >>> 32 ^ l);
    l = Double.doubleToLongBits(this.bhw);
    int i11 = (int)(l >>> 32 ^ l);
    l = Double.doubleToLongBits(this.bhs);
    int i12 = (int)(l >>> 32 ^ l);
    l = Double.doubleToLongBits(this.bht);
    int i13 = (int)(l >>> 32 ^ l);
    int i14 = this.bgY;
    int j;
    if (this.bhx) {
      j = 1231;
    } else {
      j = 1237;
    }
    int i15 = this.bgC;
    int i16 = this.bhu;
    int k;
    if (this.bgW) {
      k = 1231;
    } else {
      k = 1237;
    }
    return ((((((((((((((((((((m + 31) * 31 + n) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i) * 31 + i9) * 31 + i10) * 31 + i11) * 31 + i12) * 31 + i13) * 31 + i14) * 31 + j) * 31 + i15) * 31 + i16) * 31 + k;
  }
  
  public NTRUSigningParameters rB()
  {
    return new NTRUSigningParameters(this.aMJ, this.bgC, this.aOn, this.bhp, this.bhq, this.bhs, this.bgs);
  }
  
  public NTRUSigningKeyGenerationParameters rC()
  {
    if (this.bgY == 0) {
      return new NTRUSigningKeyGenerationParameters(this.aMJ, this.bgC, this.aOn, this.bhp, this.bhy, this.bhq, this.bhs, this.bhv, this.bhx, this.bgW, this.bhA, this.bgs);
    }
    return new NTRUSigningKeyGenerationParameters(this.aMJ, this.bgC, this.bhm, this.bhn, this.bho, this.bhp, this.bhy, this.bhq, this.bhs, this.bhv, this.bhx, this.bgW, this.bhA, this.bgs);
  }
  
  public String toString()
  {
    DecimalFormat localDecimalFormat = new DecimalFormat("0.00");
    StringBuilder localStringBuilder = new StringBuilder("SignatureParameters(N=" + this.aMJ + " q=" + this.bgC);
    if (this.bgY == 0) {
      localStringBuilder.append(" polyType=SIMPLE d=" + this.aOn);
    } else {
      localStringBuilder.append(" polyType=PRODUCT d1=" + this.bhm + " d2=" + this.bhn + " d3=" + this.bho);
    }
    localStringBuilder.append(" B=" + this.bhp + " basisType=" + this.bhy + " beta=" + localDecimalFormat.format(this.bhq) + " normBound=" + localDecimalFormat.format(this.bhs) + " keyNormBound=" + localDecimalFormat.format(this.bhv) + " prime=" + this.bhx + " sparse=" + this.bgW + " keyGenAlg=" + this.bhA + " hashAlg=" + this.bgs + ")");
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUSigningKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */