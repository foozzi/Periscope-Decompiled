package o;

public enum ql
{
  private final int id;
  
  private ql(int paramInt)
  {
    this.id = paramInt;
  }
  
  public static ql ї(String paramString)
  {
    if ("io.crash.air".equals(paramString)) {
      return VP;
    }
    if (paramString != null) {
      return VQ;
    }
    return VN;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String toString()
  {
    return Integer.toString(this.id);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ql
 * JD-Core Version:    0.7.0.1
 */