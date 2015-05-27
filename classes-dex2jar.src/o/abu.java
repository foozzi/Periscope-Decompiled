package o;

import java.util.ArrayList;

public class abu
{
  private ArrayList<acb> bwQ = new ArrayList();
  
  public abu(String paramString, fw paramfw)
  {
    if (!paramfw.n())
    {
      akk.ᐨ("PsPubnub", "Event history not an array: " + paramfw);
      return;
    }
    paramfw = paramfw.s().ᴿ(0);
    if (!paramfw.n()) {
      akk.ᐨ("PsPubnub", "Event history, first elem not array: " + paramfw);
    }
    paramfw = paramfw.s();
    int i = 0;
    while (i < paramfw.size())
    {
      Object localObject = paramfw.ᴿ(i).r();
      localObject = new acb(paramString, ((fz)localObject).เ("message"), ((fz)localObject).เ("timetoken").k());
      this.bwQ.add(localObject);
      i += 1;
    }
  }
  
  public ArrayList<acb> wC()
  {
    return this.bwQ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abu
 * JD-Core Version:    0.7.0.1
 */