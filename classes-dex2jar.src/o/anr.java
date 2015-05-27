package o;

import java.math.BigInteger;

final class anr
  extends ant
{
  private final String Tk;
  private final BigInteger bNU;
  private final String bnm;
  private final String bpx;
  private final String bpy;
  private final String bpz;
  private final anu bxq;
  private final Integer bym;
  private final Integer byn;
  private final String byp;
  private final Long byq;
  private final Double byr;
  private final Double bys;
  private final Double byt;
  private final Integer byu;
  private final String byv;
  private final String byw;
  private final String byx;
  private final String mY;
  private final String nD;
  private final String oM;
  
  anr(Integer paramInteger1, anu paramanu, String paramString1, String paramString2, Integer paramInteger2, BigInteger paramBigInteger, String paramString3, Long paramLong, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, Double paramDouble1, Double paramDouble2, Double paramDouble3, Integer paramInteger3, String paramString10, String paramString11, String paramString12)
  {
    if (paramInteger1 == null) {
      throw new NullPointerException("Null version");
    }
    this.byn = paramInteger1;
    if (paramanu == null) {
      throw new NullPointerException("Null type");
    }
    this.bxq = paramanu;
    this.bnm = paramString1;
    this.nD = paramString2;
    this.bym = paramInteger2;
    this.bNU = paramBigInteger;
    this.oM = paramString3;
    this.byq = paramLong;
    this.mY = paramString4;
    this.bpx = paramString5;
    this.bpy = paramString6;
    this.bpz = paramString7;
    this.Tk = paramString8;
    this.byp = paramString9;
    this.byr = paramDouble1;
    this.bys = paramDouble2;
    this.byt = paramDouble3;
    this.byu = paramInteger3;
    this.byv = paramString10;
    this.byw = paramString11;
    this.byx = paramString12;
  }
  
  public String Cb()
  {
    return this.nD;
  }
  
  public Integer Ce()
  {
    return this.byn;
  }
  
  public anu Cf()
  {
    return this.bxq;
  }
  
  public String Cg()
  {
    return this.bnm;
  }
  
  public Integer Ch()
  {
    return this.bym;
  }
  
  public BigInteger Ci()
  {
    return this.bNU;
  }
  
  public Long Cj()
  {
    return this.byq;
  }
  
  public String Ck()
  {
    return this.mY;
  }
  
  public String Cl()
  {
    return this.bpx;
  }
  
  public String Cm()
  {
    return this.bpz;
  }
  
  public String Cn()
  {
    return this.Tk;
  }
  
  public Double Co()
  {
    return this.byr;
  }
  
  public Double Cp()
  {
    return this.bys;
  }
  
  public Double Cq()
  {
    return this.byt;
  }
  
  public Integer Cr()
  {
    return this.byu;
  }
  
  public String Cs()
  {
    return this.byv;
  }
  
  public String Ct()
  {
    return this.byw;
  }
  
  public String Cu()
  {
    return this.byx;
  }
  
  public String at()
  {
    return this.oM;
  }
  
  public String displayName()
  {
    return this.bpy;
  }
  
  public String du()
  {
    return this.byp;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof ant))
    {
      paramObject = (ant)paramObject;
      return (this.byn.equals(paramObject.Ce())) && (this.bxq.equals(paramObject.Cf())) && (this.bnm == null ? paramObject.Cg() == null : this.bnm.equals(paramObject.Cg())) && (this.nD == null ? paramObject.Cb() == null : this.nD.equals(paramObject.Cb())) && (this.bym == null ? paramObject.Ch() == null : this.bym.equals(paramObject.Ch())) && (this.bNU == null ? paramObject.Ci() == null : this.bNU.equals(paramObject.Ci())) && (this.oM == null ? paramObject.at() == null : this.oM.equals(paramObject.at())) && (this.byq == null ? paramObject.Cj() == null : this.byq.equals(paramObject.Cj())) && (this.mY == null ? paramObject.Ck() == null : this.mY.equals(paramObject.Ck())) && (this.bpx == null ? paramObject.Cl() == null : this.bpx.equals(paramObject.Cl())) && (this.bpy == null ? paramObject.displayName() == null : this.bpy.equals(paramObject.displayName())) && (this.bpz == null ? paramObject.Cm() == null : this.bpz.equals(paramObject.Cm())) && (this.Tk == null ? paramObject.Cn() == null : this.Tk.equals(paramObject.Cn())) && (this.byp == null ? paramObject.du() == null : this.byp.equals(paramObject.du())) && (this.byr == null ? paramObject.Co() == null : this.byr.equals(paramObject.Co())) && (this.bys == null ? paramObject.Cp() == null : this.bys.equals(paramObject.Cp())) && (this.byt == null ? paramObject.Cq() == null : this.byt.equals(paramObject.Cq())) && (this.byu == null ? paramObject.Cr() == null : this.byu.equals(paramObject.Cr())) && (this.byv == null ? paramObject.Cs() == null : this.byv.equals(paramObject.Cs())) && (this.byw == null ? paramObject.Ct() == null : this.byw.equals(paramObject.Ct())) && (this.byx == null ? paramObject.Cu() == null : this.byx.equals(paramObject.Cu()));
    }
    return false;
  }
  
  public int hashCode()
  {
    int i15 = this.byn.hashCode();
    int i16 = this.bxq.hashCode();
    int i;
    if (this.bnm == null) {
      i = 0;
    } else {
      i = this.bnm.hashCode();
    }
    int j;
    if (this.nD == null) {
      j = 0;
    } else {
      j = this.nD.hashCode();
    }
    int k;
    if (this.bym == null) {
      k = 0;
    } else {
      k = this.bym.hashCode();
    }
    int m;
    if (this.bNU == null) {
      m = 0;
    } else {
      m = this.bNU.hashCode();
    }
    int n;
    if (this.oM == null) {
      n = 0;
    } else {
      n = this.oM.hashCode();
    }
    int i1;
    if (this.byq == null) {
      i1 = 0;
    } else {
      i1 = this.byq.hashCode();
    }
    int i2;
    if (this.mY == null) {
      i2 = 0;
    } else {
      i2 = this.mY.hashCode();
    }
    int i3;
    if (this.bpx == null) {
      i3 = 0;
    } else {
      i3 = this.bpx.hashCode();
    }
    int i4;
    if (this.bpy == null) {
      i4 = 0;
    } else {
      i4 = this.bpy.hashCode();
    }
    int i5;
    if (this.bpz == null) {
      i5 = 0;
    } else {
      i5 = this.bpz.hashCode();
    }
    int i6;
    if (this.Tk == null) {
      i6 = 0;
    } else {
      i6 = this.Tk.hashCode();
    }
    int i7;
    if (this.byp == null) {
      i7 = 0;
    } else {
      i7 = this.byp.hashCode();
    }
    int i8;
    if (this.byr == null) {
      i8 = 0;
    } else {
      i8 = this.byr.hashCode();
    }
    int i9;
    if (this.bys == null) {
      i9 = 0;
    } else {
      i9 = this.bys.hashCode();
    }
    int i10;
    if (this.byt == null) {
      i10 = 0;
    } else {
      i10 = this.byt.hashCode();
    }
    int i11;
    if (this.byu == null) {
      i11 = 0;
    } else {
      i11 = this.byu.hashCode();
    }
    int i12;
    if (this.byv == null) {
      i12 = 0;
    } else {
      i12 = this.byv.hashCode();
    }
    int i13;
    if (this.byw == null) {
      i13 = 0;
    } else {
      i13 = this.byw.hashCode();
    }
    int i14;
    if (this.byx == null) {
      i14 = 0;
    } else {
      i14 = this.byx.hashCode();
    }
    return ((((((((((((((((((((0xF4243 ^ i15) * 1000003 ^ i16) * 1000003 ^ i) * 1000003 ^ j) * 1000003 ^ k) * 1000003 ^ m) * 1000003 ^ n) * 1000003 ^ i1) * 1000003 ^ i2) * 1000003 ^ i3) * 1000003 ^ i4) * 1000003 ^ i5) * 1000003 ^ i6) * 1000003 ^ i7) * 1000003 ^ i8) * 1000003 ^ i9) * 1000003 ^ i10) * 1000003 ^ i11) * 1000003 ^ i12) * 1000003 ^ i13) * 1000003 ^ i14;
  }
  
  public String toString()
  {
    return "Message{version=" + this.byn + ", " + "type=" + this.bxq + ", " + "channel=" + this.bnm + ", " + "userId=" + this.nD + ", " + "participantIndex=" + this.bym + ", " + "ntp=" + this.bNU + ", " + "uuid=" + this.oM + ", " + "timestamp=" + this.byq + ", " + "signature=" + this.mY + ", " + "username=" + this.bpx + ", " + "displayName=" + this.bpy + ", " + "initials=" + this.bpz + ", " + "profileImageUrl=" + this.Tk + ", " + "body=" + this.byp + ", " + "timestampPlaybackOffset=" + this.byr + ", " + "latitude=" + this.bys + ", " + "longitude=" + this.byt + ", " + "invitedCount=" + this.byu + ", " + "broadcasterBlockedMessage=" + this.byv + ", " + "broadcasterBlockedUserId=" + this.byw + ", " + "broadcasterBlockedUsername=" + this.byx + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.anr
 * JD-Core Version:    0.7.0.1
 */