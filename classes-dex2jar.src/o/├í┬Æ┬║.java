package o;

import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public final class ᒺ
  implements ᒎ, ᒲ
{
  private ᒺ.if[] wA;
  private final প wm = new প(ܫ.AY);
  private final প wn = new প(4);
  private final প wo = new প(16);
  private final Stack<ᒶ.if> wp = new Stack();
  private int wq = 0;
  private long wr;
  private int ws;
  private long wt;
  private int wu;
  private প wv;
  private int ww;
  private int wx;
  private int wy;
  private ᒬ wz;
  
  private boolean ˊ(ᒑ paramᒑ)
  {
    if (!paramᒑ.ˊ(this.wo.fw, 0, 8, true)) {
      return false;
    }
    this.wo.setPosition(0);
    this.wt = this.wo.ϒ();
    this.ws = this.wo.readInt();
    if (this.wt == 1L)
    {
      paramᒑ.readFully(this.wo.fw, 8, 8);
      this.wt = this.wo.readLong();
      this.wr += 16L;
      this.wu = 16;
    }
    else
    {
      this.wr += 8L;
      this.wu = 8;
    }
    if (ᒃ(this.ws))
    {
      if (this.wt == 1L) {
        this.wp.add(new ᒶ.if(this.ws, this.wr + this.wt - this.wu));
      } else {
        this.wp.add(new ᒶ.if(this.ws, this.wr + this.wt - this.wu));
      }
      this.wq = 0;
    }
    else if (ᐥ(this.ws))
    {
      boolean bool;
      if (this.wt < 2147483647L) {
        bool = true;
      } else {
        bool = false;
      }
      ړ.ᐟ(bool);
      this.wv = new প((int)this.wt);
      System.arraycopy(this.wo.fw, 0, this.wv.fw, 0, 8);
      this.wq = 1;
    }
    else
    {
      this.wv = null;
      this.wq = 1;
    }
    return true;
  }
  
  private void ˋ(ᒶ.if paramif)
  {
    ArrayList localArrayList = new ArrayList();
    long l1 = 9223372036854775807L;
    int i = 0;
    while (i < paramif.wh.size())
    {
      Object localObject = (ᒶ.if)paramif.wh.get(i);
      long l2;
      if (((ᒶ.if)localObject).type != ᒶ.vw)
      {
        l2 = l1;
      }
      else
      {
        ᓖ localᓖ = ᒷ.ˊ((ᒶ.if)localObject, paramif.ܝ(ᒶ.vv));
        l2 = l1;
        if (localᓖ != null) {
          if ((localᓖ.type != 1936684398) && (localᓖ.type != 1986618469))
          {
            l2 = l1;
          }
          else
          {
            localObject = ᒷ.ˊ(localᓖ, ((ᒶ.if)localObject).า(ᒶ.vx).า(ᒶ.vy).า(ᒶ.vz));
            if (((ᓛ)localObject).wK == 0)
            {
              l2 = l1;
            }
            else
            {
              ᒺ.if localif = new ᒺ.if(localᓖ, (ᓛ)localObject, this.wz.ר(i));
              localif.wD.ˊ(localᓖ.wk);
              localArrayList.add(localif);
              long l3 = localObject.uV[0];
              l2 = l1;
              if (l3 < l1) {
                l2 = l3;
              }
            }
          }
        }
      }
      i += 1;
      l1 = l2;
    }
    this.wA = ((ᒺ.if[])localArrayList.toArray(new ᒺ.if[0]));
    this.wz.ᒯ();
    this.wz.ˊ(this);
    this.wq = 2;
  }
  
  private boolean ˋ(ᒑ paramᒑ, ᒮ paramᒮ)
  {
    this.wq = 0;
    this.wr += this.wt - this.wu;
    long l = this.wt - this.wu;
    boolean bool;
    if ((this.wv == null) && ((this.wt >= 262144L) || (this.wt > 2147483647L))) {
      bool = true;
    } else {
      bool = false;
    }
    if (bool)
    {
      paramᒮ.tU = this.wr;
    }
    else if (this.wv != null)
    {
      paramᒑ.readFully(this.wv.fw, this.wu, (int)l);
      if (!this.wp.isEmpty()) {
        ((ᒶ.if)this.wp.peek()).ˊ(new ᒶ.ˊ(this.ws, this.wv));
      }
    }
    else
    {
      paramᒑ.נ((int)l);
    }
    while ((!this.wp.isEmpty()) && (((ᒶ.if)this.wp.peek()).wf == this.wr))
    {
      paramᒑ = (ᒶ.if)this.wp.pop();
      if (paramᒑ.type == ᒶ.vu) {
        ˋ(paramᒑ);
      } else if (!this.wp.isEmpty()) {
        ((ᒶ.if)this.wp.peek()).ˊ(paramᒑ);
      }
    }
    return bool;
  }
  
  private int ˎ(ᒑ paramᒑ, ᒮ paramᒮ)
  {
    int i = ᴒ();
    if (i == -1) {
      return -1;
    }
    ᒺ.if localif = this.wA[i];
    i = localif.wE;
    long l1 = localif.wC.uV[i];
    long l2 = l1 - paramᒑ.getPosition() + this.wx;
    if ((l2 < 0L) || (l2 >= 262144L))
    {
      paramᒮ.tU = l1;
      return 1;
    }
    paramᒑ.נ((int)l2);
    this.ww = localif.wC.uW[i];
    int j;
    if (localif.wB.wl != -1)
    {
      paramᒮ = this.wn.fw;
      paramᒮ[0] = 0;
      paramᒮ[1] = 0;
      paramᒮ[2] = 0;
      j = localif.wB.wl;
      int k = 4 - localif.wB.wl;
      while (this.wx < this.ww) {
        if (this.wy == 0)
        {
          paramᒑ.readFully(this.wn.fw, k, j);
          this.wn.setPosition(0);
          this.wy = this.wn.ѕ();
          this.wm.setPosition(0);
          localif.wD.ˊ(this.wm, 4);
          this.wx += 4;
          this.ww += k;
        }
        else
        {
          int m = localif.wD.ˊ(paramᒑ, this.wy);
          this.wx += m;
          this.wy -= m;
        }
      }
    }
    else
    {
      while (this.wx < this.ww)
      {
        j = localif.wD.ˊ(paramᒑ, this.ww - this.wx);
        this.wx += j;
        this.wy -= j;
      }
    }
    localif.wD.ˊ(localif.wC.wL[i], localif.wC.uX[i], this.ww, 0, null);
    localif.wE += 1;
    this.wx = 0;
    this.wy = 0;
    return 0;
  }
  
  private static boolean ᐥ(int paramInt)
  {
    return (paramInt == ᒶ.vF) || (paramInt == ᒶ.vv) || (paramInt == ᒶ.vG) || (paramInt == ᒶ.vV) || (paramInt == ᒶ.vW) || (paramInt == ᒶ.vH) || (paramInt == ᒶ.vg) || (paramInt == ᒶ.vA) || (paramInt == ᒶ.vk) || (paramInt == ᒶ.vi) || (paramInt == ᒶ.vY) || (paramInt == ᒶ.vZ) || (paramInt == ᒶ.wa) || (paramInt == ᒶ.wb) || (paramInt == ᒶ.wc) || (paramInt == ᒶ.wd) || (paramInt == ᒶ.we) || (paramInt == ᒶ.vE);
  }
  
  private static boolean ᒃ(int paramInt)
  {
    return (paramInt == ᒶ.vu) || (paramInt == ᒶ.vw) || (paramInt == ᒶ.vx) || (paramInt == ᒶ.vy) || (paramInt == ᒶ.vz);
  }
  
  private int ᴒ()
  {
    int j = -1;
    long l1 = 9223372036854775807L;
    int i = 0;
    while (i < this.wA.length)
    {
      ᒺ.if localif = this.wA[i];
      int k = localif.wE;
      long l2;
      if (k == localif.wC.wK)
      {
        l2 = l1;
      }
      else
      {
        long l3 = localif.wC.uV[k];
        l2 = l1;
        if (l3 < l1)
        {
          l2 = l3;
          j = i;
        }
      }
      i += 1;
      l1 = l2;
    }
    return j;
  }
  
  public int ˊ(ᒑ paramᒑ, ᒮ paramᒮ)
  {
    do
    {
      do
      {
        switch (this.wq)
        {
        default: 
          break label56;
        }
      } while (ˊ(paramᒑ));
      return -1;
    } while (!ˋ(paramᒑ, paramᒮ));
    return 1;
    label56:
    return ˎ(paramᒑ, paramᒮ);
  }
  
  public void ˊ(ᒬ paramᒬ)
  {
    this.wz = paramᒬ;
  }
  
  public void ᒮ()
  {
    this.wr = 0L;
    this.wx = 0;
    this.wy = 0;
  }
  
  public boolean ᚆ()
  {
    return true;
  }
  
  public long ｰ(long paramLong)
  {
    long l1 = 9223372036854775807L;
    int i = 0;
    while (i < this.wA.length)
    {
      ᓛ localᓛ = this.wA[i].wC;
      int k = localᓛ.ʳ(paramLong);
      int j = k;
      if (k == -1) {
        j = localᓛ.ʴ(paramLong);
      }
      this.wA[i].wE = j;
      long l3 = localᓛ.uV[this.wA[i].wE];
      long l2 = l1;
      if (l3 < l1) {
        l2 = l3;
      }
      i += 1;
      l1 = l2;
    }
    return l1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áº
 * JD-Core Version:    0.7.0.1
 */