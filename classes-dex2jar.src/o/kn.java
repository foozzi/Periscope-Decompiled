package o;

import java.util.Enumeration;
import java.util.Hashtable;

class kn
{
  private volatile ll NT;
  private Hashtable NU;
  private String[] NV;
  private Hashtable NW;
  private boolean NX;
  private boolean NY;
  private lu NZ;
  private String url;
  
  public kn(String[] paramArrayOfString, Hashtable paramHashtable, ll paramll)
  {
    ˊ(paramArrayOfString);
    ˊ(paramHashtable);
    ˊ(paramll);
  }
  
  public lu al()
  {
    return this.NZ;
  }
  
  public boolean am()
  {
    return this.NY;
  }
  
  public boolean an()
  {
    return this.NX;
  }
  
  public ll ao()
  {
    return this.NT;
  }
  
  public Hashtable ap()
  {
    return this.NU;
  }
  
  public String getUrl()
  {
    if (this.url != null) {
      return this.url;
    }
    Object localObject2 = li.ˊ(this.NV, "/");
    Object localObject1 = localObject2;
    if (this.NW != null)
    {
      localObject1 = localObject2;
      if (this.NW.size() > 0)
      {
        localObject1 = new StringBuffer();
        ((StringBuffer)localObject1).append((String)localObject2).append("?");
        localObject2 = this.NW.keys();
        int i = 1;
        while (((Enumeration)localObject2).hasMoreElements())
        {
          if (i == 0) {
            ((StringBuffer)localObject1).append("&");
          } else {
            i = 0;
          }
          String str = (String)((Enumeration)localObject2).nextElement();
          ((StringBuffer)localObject1).append(li.৲(str)).append("=").append(li.৲((String)this.NW.get(str)));
        }
        localObject1 = ((StringBuffer)localObject1).toString();
      }
    }
    this.url = ((String)localObject1);
    return this.url;
  }
  
  public void ˊ(Hashtable paramHashtable)
  {
    this.NW = paramHashtable;
  }
  
  public void ˊ(ll paramll)
  {
    this.NT = paramll;
  }
  
  public void ˊ(lu paramlu)
  {
    this.NZ = paramlu;
  }
  
  public void ˊ(String[] paramArrayOfString)
  {
    this.NV = paramArrayOfString;
  }
  
  public void ᐢ(boolean paramBoolean)
  {
    this.NY = paramBoolean;
  }
  
  public void ᒻ(boolean paramBoolean)
  {
    this.NX = paramBoolean;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.kn
 * JD-Core Version:    0.7.0.1
 */