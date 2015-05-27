package o;

import java.math.BigInteger;

public class ada
{
  @go("profileImageURL")
  public final String Tk;
  @go("signer_token")
  public final String bns;
  @go("username")
  public final String bpx;
  @go("displayName")
  public final String bpy;
  @go("initials")
  public final String bpz;
  @go("participant_index")
  public final Integer bym;
  @go("v")
  public final Integer byn;
  @go("ntpForLiveFrame")
  public final BigInteger byo;
  @go("body")
  public final String byp;
  @go("timestamp")
  public final Long byq;
  @go("timestampPlaybackOffset")
  public final Double byr;
  @go("lat")
  public final Double bys;
  @go("lng")
  public final Double byt;
  @go("invited_count")
  public final Integer byu;
  @go("broadcasterBlockedMessageBody")
  public final String byv;
  @go("broadcasterBlockedRemoteID")
  public final String byw;
  @go("broadcasterBlockedUsername")
  public final String byx;
  @go("signature")
  public final String mY;
  @go("remoteID")
  public final String nD;
  @go("uuid")
  public final String oM;
  @go("type")
  public final int type;
  
  public ada(String paramString, ant paramant)
  {
    this.type = paramant.Cf().ordinal();
    this.bns = paramString;
    this.bym = paramant.Ch();
    this.byn = paramant.Ce();
    this.oM = paramant.at();
    this.byo = paramant.Ci();
    this.byp = paramant.du();
    this.bpx = paramant.Cl();
    this.Tk = paramant.Cn();
    this.bpz = paramant.Cm();
    this.byq = paramant.Cj();
    this.mY = paramant.Ck();
    this.bpy = paramant.displayName();
    this.nD = paramant.Cb();
    this.byr = paramant.Co();
    this.bys = paramant.Cp();
    this.byt = paramant.Cq();
    this.byu = paramant.Cr();
    this.byv = paramant.Cs();
    this.byw = paramant.Ct();
    this.byx = paramant.Cu();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ada
 * JD-Core Version:    0.7.0.1
 */