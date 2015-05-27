package o;

final class ans
  extends anv
{
  private final String bNV;
  private final int bnl;
  private final String bpx;
  private final String bpy;
  private final String id;
  
  ans(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null id");
    }
    this.id = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null profileImage");
    }
    this.bNV = paramString2;
    if (paramString3 == null) {
      throw new NullPointerException("Null displayName");
    }
    this.bpy = paramString3;
    if (paramString4 == null) {
      throw new NullPointerException("Null username");
    }
    this.bpx = paramString4;
    this.bnl = paramInt;
  }
  
  public String Cl()
  {
    return this.bpx;
  }
  
  public String Cv()
  {
    return this.bNV;
  }
  
  public int Cw()
  {
    return this.bnl;
  }
  
  public String displayName()
  {
    return this.bpy;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof anv))
    {
      paramObject = (anv)paramObject;
      return (this.id.equals(paramObject.id())) && (this.bNV.equals(paramObject.Cv())) && (this.bpy.equals(paramObject.displayName())) && (this.bpx.equals(paramObject.Cl())) && (this.bnl == paramObject.Cw());
    }
    return false;
  }
  
  public int hashCode()
  {
    return ((((0xF4243 ^ this.id.hashCode()) * 1000003 ^ this.bNV.hashCode()) * 1000003 ^ this.bpy.hashCode()) * 1000003 ^ this.bpx.hashCode()) * 1000003 ^ this.bnl;
  }
  
  public String id()
  {
    return this.id;
  }
  
  public String toString()
  {
    return "TrimUser{id=" + this.id + ", " + "profileImage=" + this.bNV + ", " + "displayName=" + this.bpy + ", " + "username=" + this.bpx + ", " + "participantIndex=" + this.bnl + "}";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ans
 * JD-Core Version:    0.7.0.1
 */