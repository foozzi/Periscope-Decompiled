package o;

import java.util.LinkedList;
import java.util.List;

public class aky
{
  private final int[] bKY = { 0, 32, 4096 };
  private List<akz> bKZ = new LinkedList();
  private List<akz> bLa = new LinkedList();
  private List<akz> bLb = new LinkedList();
  private int bLc = 0;
  private int bLd = 0;
  
  public void shutdown()
  {
    akk.ᐪ("RTMP", "Buffer pool: " + this.bLd + " / " + this.bLc);
  }
  
  public void ˋ(akz paramakz)
  {
    if (paramakz.Bo() != this) {
      akk.ᐪ("RTMP", "Pool anomaly");
    }
    List localList = ᓼ(paramakz.buffer.length);
    paramakz.length = 0;
    try
    {
      this.bLd -= 1;
      localList.add(paramakz);
      return;
    }
    finally
    {
      paramakz = finally;
      throw paramakz;
    }
  }
  
  List<akz> ᓼ(int paramInt)
  {
    List localList = this.bKZ;
    if (paramInt > this.bKY[2]) {
      return this.bLb;
    }
    if (paramInt > this.bKY[1]) {
      localList = this.bLa;
    }
    return localList;
  }
  
  public akz ᓽ(int paramInt)
  {
    akz localakz = null;
    try
    {
      Object localObject2 = ᓼ(paramInt);
      if (((List)localObject2).size() > 0) {
        localakz = (akz)((List)localObject2).remove(0);
      }
      localObject2 = localakz;
      if (localakz == null)
      {
        localObject2 = new akz();
        ((akz)localObject2).ˊ(this);
        this.bLc += 1;
      }
      ((akz)localObject2).ᔀ(paramInt);
      this.bLd += 1;
      return localObject2;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aky
 * JD-Core Version:    0.7.0.1
 */