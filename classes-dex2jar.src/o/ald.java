package o;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class ald
{
  private aky bKG = new aky();
  private int bKn = 128;
  private final ala bKr;
  private HashMap<Integer, akv> bLA = new HashMap();
  private HashMap<Integer, aku> bLB = new HashMap();
  private aku bLC = null;
  private final int bLD = 15;
  byte[] bLE = new byte[15];
  private int bLF = 0;
  private int bLG = 0;
  private List<alc> bLH = new LinkedList();
  private final int bLy = 128;
  private int bLz = 128;
  
  public ald(ala paramala)
  {
    this.bKr = paramala;
  }
  
  private aku ᔁ(int paramInt)
  {
    aku localaku2 = (aku)this.bLB.get(Integer.valueOf(paramInt));
    aku localaku1 = localaku2;
    if (localaku2 == null)
    {
      localaku1 = new aku(paramInt, this.bLz, this);
      this.bLB.put(Integer.valueOf(paramInt), localaku1);
    }
    return localaku1;
  }
  
  public int Bf()
  {
    if (this.bLC != null) {
      return this.bLC.Bf();
    }
    if (this.bLG == 0) {
      return 1;
    }
    if (this.bLF < this.bLG) {
      return this.bLG - this.bLF;
    }
    this.bLG = 0;
    return 1;
  }
  
  public void ˎ(alc paramalc)
  {
    try
    {
      akz localakz = paramalc.Bs();
      this.bLH.add(paramalc);
      this.bKG.ˋ(localakz);
      return;
    }
    finally
    {
      paramalc = finally;
      throw paramalc;
    }
  }
  
  public boolean ᐝ(alc paramalc)
  {
    akv localakv2 = (akv)this.bLA.get(Integer.valueOf(paramalc.Bp()));
    akv localakv1 = localakv2;
    if (localakv2 == null)
    {
      localakv1 = new akv(paramalc.Bp(), this.bKn);
      this.bLA.put(Integer.valueOf(paramalc.Bp()), localakv1);
    }
    return localakv1.ˊ(paramalc, this.bKr);
  }
  
  public void ᓶ(int paramInt)
  {
    this.bLz = paramInt;
    Iterator localIterator = this.bLB.values().iterator();
    while (localIterator.hasNext()) {
      ((aku)localIterator.next()).ᓶ(paramInt);
    }
  }
  
  public void ᓷ(int paramInt)
  {
    this.bKn = paramInt;
    Iterator localIterator = this.bLA.values().iterator();
    while (localIterator.hasNext()) {
      ((akv)localIterator.next()).ᓷ(paramInt);
    }
  }
  
  public alc ᵔ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      alc localalc;
      if (this.bLH.size() > 0)
      {
        localalc = (alc)this.bLH.remove(0);
        localalc.ˮ(paramInt1, paramInt2, paramInt3);
      }
      else
      {
        localalc = new alc(paramInt1, paramInt2, paramInt3);
      }
      if (paramInt4 > 0) {
        localalc.ˎ(this.bKG.ᓽ(paramInt4));
      }
      return localalc;
    }
    finally {}
  }
  
  public alc יּ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 != Bf()) {
      return null;
    }
    if (this.bLC != null)
    {
      paramArrayOfByte = this.bLC.ᵕ(paramArrayOfByte, paramInt1, paramInt2);
      if (this.bLC.Be())
      {
        this.bLC = null;
        this.bLG = 0;
      }
      return paramArrayOfByte;
    }
    if (this.bLG == 0)
    {
      this.bLE[0] = paramArrayOfByte[paramInt1];
      this.bLF = 1;
      this.bLG = 1;
      if ((this.bLE[0] & 0x3F) == 0) {
        this.bLG += 1;
      } else if ((this.bLE[0] & 0x3F) == 1) {
        this.bLG += 2;
      }
      switch (this.bLE[0] >> 6)
      {
      default: 
        break;
      case 0: 
        this.bLG += 11;
        break;
      case 1: 
        this.bLG += 7;
        break;
      case 2: 
        this.bLG += 3;
      }
    }
    else if (this.bLF < this.bLG)
    {
      paramInt2 = this.bLG - this.bLF;
      System.arraycopy(paramArrayOfByte, paramInt1, this.bLE, this.bLF, paramInt2);
      this.bLF += paramInt2;
    }
    if (this.bLF == this.bLG)
    {
      int k = this.bLE[0];
      paramArrayOfByte = this.bLE;
      int i = 0 + 1;
      int j = paramArrayOfByte[0] & 0x3F;
      if (j == 0)
      {
        paramArrayOfByte = this.bLE;
        paramInt1 = i + 1;
        paramInt2 = paramArrayOfByte[1] + 64;
      }
      else
      {
        paramInt1 = i;
        paramInt2 = j;
        if (j == 1)
        {
          paramInt2 = this.bLE[1];
          paramArrayOfByte = this.bLE;
          paramInt1 = i + 1 + 1;
          paramInt2 = (paramInt2 << 8) + paramArrayOfByte[2];
        }
      }
      this.bLC = ᔁ(paramInt2);
      return this.bLC.ᐝ(this.bLE, paramInt1, this.bLF - paramInt1, k >> 6);
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ald
 * JD-Core Version:    0.7.0.1
 */