package o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ৰ
{
  private static final Comparator<ৰ.if> Br = new ค();
  private static final Comparator<ৰ.if> Bs = new ฅ();
  private final int Bt;
  private final ArrayList<ৰ.if> Bu;
  private final ৰ.if[] Bv;
  private int Bw;
  private int Bx;
  private int By;
  private int Bz;
  
  public ৰ(int paramInt)
  {
    this.Bt = paramInt;
    this.Bv = new ৰ.if[5];
    this.Bu = new ArrayList();
    this.Bw = -1;
  }
  
  private void ӭ()
  {
    if (this.Bw != 1)
    {
      Collections.sort(this.Bu, Br);
      this.Bw = 1;
    }
  }
  
  private void ӱ()
  {
    if (this.Bw != 0)
    {
      Collections.sort(this.Bu, Bs);
      this.Bw = 0;
    }
  }
  
  public void ˎ(int paramInt, float paramFloat)
  {
    ӭ();
    Object localObject;
    if (this.Bz > 0)
    {
      localObject = this.Bv;
      i = this.Bz - 1;
      this.Bz = i;
      localObject = localObject[i];
    }
    else
    {
      localObject = new ৰ.if(null);
    }
    int i = this.Bx;
    this.Bx = (i + 1);
    ((ৰ.if)localObject).index = i;
    ((ৰ.if)localObject).weight = paramInt;
    ((ৰ.if)localObject).value = paramFloat;
    this.Bu.add(localObject);
    this.By += paramInt;
    while (this.By > this.Bt)
    {
      paramInt = this.By - this.Bt;
      localObject = (ৰ.if)this.Bu.get(0);
      if (((ৰ.if)localObject).weight <= paramInt)
      {
        this.By -= ((ৰ.if)localObject).weight;
        this.Bu.remove(0);
        if (this.Bz < 5)
        {
          ৰ.if[] arrayOfif = this.Bv;
          paramInt = this.Bz;
          this.Bz = (paramInt + 1);
          arrayOfif[paramInt] = localObject;
        }
      }
      else
      {
        ((ৰ.if)localObject).weight -= paramInt;
        this.By -= paramInt;
      }
    }
  }
  
  public float ﹳ(float paramFloat)
  {
    ӱ();
    float f = this.By;
    int j = 0;
    int i = 0;
    while (i < this.Bu.size())
    {
      ৰ.if localif = (ৰ.if)this.Bu.get(i);
      j += localif.weight;
      if (j >= paramFloat * f) {
        return localif.value;
      }
      i += 1;
    }
    if (this.Bu.isEmpty()) {
      return (0.0F / 0.0F);
    }
    return ((ৰ.if)this.Bu.get(this.Bu.size() - 1)).value;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à§°
 * JD-Core Version:    0.7.0.1
 */