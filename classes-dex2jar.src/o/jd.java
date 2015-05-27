package o;

import java.util.BitSet;

final class jd
  extends gk<BitSet>
{
  public void ˊ(kc paramkc, BitSet paramBitSet)
  {
    if (paramBitSet == null)
    {
      paramkc.T();
      return;
    }
    paramkc.P();
    int i = 0;
    while (i < paramBitSet.length())
    {
      int j;
      if (paramBitSet.get(i)) {
        j = 1;
      } else {
        j = 0;
      }
      paramkc.ᐩ(j);
      i += 1;
    }
    paramkc.Q();
  }
  
  public BitSet ﹳ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    BitSet localBitSet = new BitSet();
    paramjz.beginArray();
    int i = 0;
    for (Object localObject = paramjz.J(); localObject != kb.Nu; localObject = paramjz.J())
    {
      boolean bool;
      switch (ir.1.LP[localObject.ordinal()])
      {
      default: 
        break;
      case 1: 
        if (paramjz.nextInt() != 0) {
          bool = true;
        } else {
          bool = false;
        }
        break;
      case 2: 
        bool = paramjz.nextBoolean();
        break;
      case 3: 
        localObject = paramjz.nextString();
        try
        {
          int j = Integer.parseInt((String)localObject);
          if (j != 0) {
            bool = true;
          } else {
            bool = false;
          }
        }
        catch (NumberFormatException paramjz)
        {
          throw new gf("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
        }
      }
      throw new gf("Invalid bitset value type: " + localObject);
      if (bool) {
        localBitSet.set(i);
      }
      i += 1;
    }
    paramjz.endArray();
    return localBitSet;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jd
 * JD-Core Version:    0.7.0.1
 */