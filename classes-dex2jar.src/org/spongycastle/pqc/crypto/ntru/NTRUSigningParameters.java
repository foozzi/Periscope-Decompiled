package org.spongycastle.pqc.crypto.ntru;

import java.text.DecimalFormat;
import org.spongycastle.crypto.Digest;

public class NTRUSigningParameters
  implements Cloneable
{
  public int aMJ;
  public int aOn;
  public int bgC;
  public Digest bgs;
  public int bhm;
  public int bhn;
  public int bho;
  public int bhp;
  double bhq;
  public double bhr;
  double bhs;
  public double bht;
  public int bhu = 100;
  int bhz = 6;
  
  public NTRUSigningParameters(int paramInt1, int paramInt2, int paramInt3, int paramInt4, double paramDouble1, double paramDouble2, Digest paramDigest)
  {
    this.aMJ = paramInt1;
    this.bgC = paramInt2;
    this.aOn = paramInt3;
    this.bhp = paramInt4;
    this.bhq = paramDouble1;
    this.bhs = paramDouble2;
    this.bgs = paramDigest;
    init();
  }
  
  private void init()
  {
    this.bhr = (this.bhq * this.bhq);
    this.bht = (this.bhs * this.bhs);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (!(paramObject instanceof NTRUSigningParameters)) {
      return false;
    }
    paramObject = (NTRUSigningParameters)paramObject;
    if (this.bhp != paramObject.bhp) {
      return false;
    }
    if (this.aMJ != paramObject.aMJ) {
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
    if (Double.doubleToLongBits(this.bhs) != Double.doubleToLongBits(paramObject.bhs)) {
      return false;
    }
    if (Double.doubleToLongBits(this.bht) != Double.doubleToLongBits(paramObject.bht)) {
      return false;
    }
    if (this.bgC != paramObject.bgC) {
      return false;
    }
    return this.bhu == paramObject.bhu;
  }
  
  public int hashCode()
  {
    int j = this.bhp;
    int k = this.aMJ;
    long l = Double.doubleToLongBits(this.bhq);
    int m = (int)(l >>> 32 ^ l);
    l = Double.doubleToLongBits(this.bhr);
    int n = (int)(l >>> 32 ^ l);
    int i1 = this.bhz;
    int i2 = this.aOn;
    int i3 = this.bhm;
    int i4 = this.bhn;
    int i5 = this.bho;
    int i;
    if (this.bgs == null) {
      i = 0;
    } else {
      i = this.bgs.iG().hashCode();
    }
    l = Double.doubleToLongBits(this.bhs);
    int i6 = (int)(l >>> 32 ^ l);
    l = Double.doubleToLongBits(this.bht);
    return (((((((((((((j + 31) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i) * 31 + i6) * 31 + (int)(l >>> 32 ^ l)) * 31 + this.bgC) * 31 + this.bhu;
  }
  
  public NTRUSigningParameters rH()
  {
    return new NTRUSigningParameters(this.aMJ, this.bgC, this.aOn, this.bhp, this.bhq, this.bhs, this.bgs);
  }
  
  public String toString()
  {
    DecimalFormat localDecimalFormat = new DecimalFormat("0.00");
    StringBuilder localStringBuilder = new StringBuilder("SignatureParameters(N=" + this.aMJ + " q=" + this.bgC);
    localStringBuilder.append(" B=" + this.bhp + " beta=" + localDecimalFormat.format(this.bhq) + " normBound=" + localDecimalFormat.format(this.bhs) + " hashAlg=" + this.bgs + ")");
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUSigningParameters
 * JD-Core Version:    0.7.0.1
 */