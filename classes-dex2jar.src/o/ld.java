package o;

import java.util.UUID;

abstract class ld
  extends ku
{
  public ld(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    super(paramString1, paramString2, paramString3, paramString4, paramBoolean);
  }
  
  public String at()
  {
    return UUID.randomUUID().toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ld
 * JD-Core Version:    0.7.0.1
 */