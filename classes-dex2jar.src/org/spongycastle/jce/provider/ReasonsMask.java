package org.spongycastle.jce.provider;

import org.spongycastle.asn1.x509.ReasonFlags;

class ReasonsMask
{
  static final ReasonsMask bbN = new ReasonsMask(33023);
  private int bbM;
  
  ReasonsMask()
  {
    this(0);
  }
  
  private ReasonsMask(int paramInt)
  {
    this.bbM = paramInt;
  }
  
  ReasonsMask(ReasonFlags paramReasonFlags)
  {
    this.bbM = paramReasonFlags.intValue();
  }
  
  boolean oY()
  {
    return this.bbM == bbN.bbM;
  }
  
  int oZ()
  {
    return this.bbM;
  }
  
  void ˊ(ReasonsMask paramReasonsMask)
  {
    this.bbM |= paramReasonsMask.oZ();
  }
  
  ReasonsMask ˋ(ReasonsMask paramReasonsMask)
  {
    ReasonsMask localReasonsMask = new ReasonsMask();
    localReasonsMask.ˊ(new ReasonsMask(this.bbM & paramReasonsMask.oZ()));
    return localReasonsMask;
  }
  
  boolean ˎ(ReasonsMask paramReasonsMask)
  {
    return (this.bbM | paramReasonsMask.oZ() ^ this.bbM) != 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.ReasonsMask
 * JD-Core Version:    0.7.0.1
 */