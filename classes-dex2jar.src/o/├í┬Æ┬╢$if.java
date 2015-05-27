package o;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class ᒶ$if
  extends ᒶ
{
  public final long wf;
  public final List<ᒶ.ˊ> wg = new ArrayList();
  public final List<if> wh = new ArrayList();
  
  public ᒶ$if(int paramInt, long paramLong)
  {
    super(paramInt);
    this.wf = paramLong;
  }
  
  public String toString()
  {
    return ہ(this.type) + " leaves: " + Arrays.toString(this.wg.toArray(new ᒶ.ˊ[0])) + " containers: " + Arrays.toString(this.wh.toArray(new if[0]));
  }
  
  public void ˊ(if paramif)
  {
    this.wh.add(paramif);
  }
  
  public void ˊ(ᒶ.ˊ paramˊ)
  {
    this.wg.add(paramˊ);
  }
  
  public ᒶ.ˊ ܝ(int paramInt)
  {
    int j = this.wg.size();
    int i = 0;
    while (i < j)
    {
      ᒶ.ˊ localˊ = (ᒶ.ˊ)this.wg.get(i);
      if (localˊ.type == paramInt) {
        return localˊ;
      }
      i += 1;
    }
    return null;
  }
  
  public if า(int paramInt)
  {
    int j = this.wh.size();
    int i = 0;
    while (i < j)
    {
      if localif = (if)this.wh.get(i);
      if (localif.type == paramInt) {
        return localif;
      }
      i += 1;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¶.if
 * JD-Core Version:    0.7.0.1
 */