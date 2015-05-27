package o;

final class and
  extends ank
{
  private final String bnh;
  private final boolean bug;
  private final String nD;
  
  and(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null broadcastId");
    }
    this.bnh = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null userId");
    }
    this.nD = paramString2;
    this.bug = paramBoolean;
  }
  
  String Ca()
  {
    return this.bnh;
  }
  
  String Cb()
  {
    return this.nD;
  }
  
  boolean Cc()
  {
    return this.bug;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof ank))
    {
      paramObject = (ank)paramObject;
      return (this.bnh.equals(paramObject.Ca())) && (this.nD.equals(paramObject.Cb())) && (this.bug == paramObject.Cc());
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = this.bnh.hashCode();
    int k = this.nD.hashCode();
    int i;
    if (this.bug) {
      i = 1231;
    } else {
      i = 1237;
    }
    return ((0xF4243 ^ j) * 1000003 ^ k) * 1000003 ^ i;
  }
  
  public String toString()
  {
    return "ParticipantKey{broadcastId=" + this.bnh + ", " + "userId=" + this.nD + ", " + "replay=" + this.bug + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.and
 * JD-Core Version:    0.7.0.1
 */