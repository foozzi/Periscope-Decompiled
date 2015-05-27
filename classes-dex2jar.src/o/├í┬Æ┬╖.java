package o;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class ᒷ
{
  private static byte[] ʻ(প paramপ, int paramInt)
  {
    paramপ.setPosition(paramInt + 8 + 4);
    paramপ.ʰ(1);
    for (paramInt = paramপ.readUnsignedByte(); paramInt > 127; paramInt = paramপ.readUnsignedByte()) {}
    paramপ.ʰ(2);
    paramInt = paramপ.readUnsignedByte();
    if ((paramInt & 0x80) != 0) {
      paramপ.ʰ(2);
    }
    if ((paramInt & 0x40) != 0) {
      paramপ.ʰ(paramপ.readUnsignedShort());
    }
    if ((paramInt & 0x20) != 0) {
      paramপ.ʰ(2);
    }
    paramপ.ʰ(1);
    for (paramInt = paramপ.readUnsignedByte(); paramInt > 127; paramInt = paramপ.readUnsignedByte()) {}
    paramপ.ʰ(13);
    paramপ.ʰ(1);
    int i = paramপ.readUnsignedByte();
    for (paramInt = i & 0x7F; i > 127; paramInt = paramInt << 8 | i & 0x7F) {
      i = paramপ.readUnsignedByte();
    }
    byte[] arrayOfByte = new byte[paramInt];
    paramপ.ι(arrayOfByte, 0, paramInt);
    return arrayOfByte;
  }
  
  private static long ˊ(প paramপ)
  {
    paramপ.setPosition(8);
    int i;
    if (ᒶ.د(paramপ.readInt()) == 0) {
      i = 8;
    } else {
      i = 16;
    }
    paramপ.ʰ(i);
    return paramপ.ϒ();
  }
  
  private static ب ˊ(প paramপ, int paramInt1, int paramInt2, long paramLong)
  {
    paramপ.setPosition(paramInt1 + 8);
    paramপ.ʰ(24);
    int j = paramপ.readUnsignedShort();
    int k = paramপ.readUnsignedShort();
    paramপ.ʰ(50);
    ArrayList localArrayList = new ArrayList(1);
    int i = paramপ.getPosition();
    while (i - paramInt1 < paramInt2)
    {
      paramপ.setPosition(i);
      int m = paramপ.getPosition();
      int n = paramপ.readInt();
      boolean bool;
      if (n > 0) {
        bool = true;
      } else {
        bool = false;
      }
      ړ.ˊ(bool, "childAtomSize should be positive");
      if (paramপ.readInt() == ᒶ.vi) {
        localArrayList.add(ʻ(paramপ, m));
      }
      i += n;
    }
    return ب.ˊ("video/mp4v-es", -1, paramLong, j, k, localArrayList);
  }
  
  private static ᒷ.if ˊ(প paramপ, long paramLong)
  {
    paramপ.setPosition(12);
    int j = paramপ.readInt();
    ᒷ.if localif = new ᒷ.if(j);
    int i = 0;
    while (i < j)
    {
      int k = paramপ.getPosition();
      int m = paramপ.readInt();
      boolean bool;
      if (m > 0) {
        bool = true;
      } else {
        bool = false;
      }
      ړ.ˊ(bool, "childAtomSize should be positive");
      int n = paramপ.readInt();
      if ((n == ᒶ.vg) || (n == ᒶ.vh) || (n == ᒶ.vN)) {
        ˊ(paramপ, k, m, paramLong, localif, i);
      } else if ((n == ᒶ.vk) || (n == ᒶ.vO) || (n == ᒶ.vl)) {
        ˊ(paramপ, n, k, m, paramLong, localif, i);
      } else if (n == ᒶ.vU) {
        localif.wk = ب.ԁ();
      } else if (n == ᒶ.vX) {
        localif.wk = ˊ(paramপ, k, m, paramLong);
      }
      paramপ.setPosition(k + m);
      i += 1;
    }
    return localif;
  }
  
  public static ᓖ ˊ(ᒶ.if paramif, ᒶ.ˊ paramˊ)
  {
    ᒶ.if localif = paramif.า(ᒶ.vx);
    int i = ˎ(localif.ܝ(ᒶ.vG).wi);
    if ((i != 1936684398) && (i != 1986618469) && (i != 1952807028) && (i != 1953325924)) {
      return null;
    }
    paramif = ˋ(paramif.ܝ(ᒶ.vE).wi);
    int j = ((Integer)paramif.first).intValue();
    long l1 = ((Long)paramif.second).longValue();
    long l2 = ˊ(paramˊ.wi);
    if (l1 == -1L) {
      l1 = -1L;
    } else {
      l1 = ผ.ˊ(l1, 1000000L, l2);
    }
    paramif = localif.า(ᒶ.vy).า(ᒶ.vz);
    l2 = ˏ(localif.ܝ(ᒶ.vF).wi);
    paramif = ˊ(paramif.ܝ(ᒶ.vH).wi, l1);
    return new ᓖ(j, i, l2, l1, paramif.wk, paramif.wj, paramif.wl);
  }
  
  private static ᓘ ˊ(প paramপ, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + 8;
    ᓘ localᓘ = null;
    while (i - paramInt1 < paramInt2)
    {
      paramপ.setPosition(i);
      int j = paramপ.readInt();
      int k = paramপ.readInt();
      if (k == ᒶ.vP)
      {
        paramপ.readInt();
      }
      else if (k == ᒶ.vK)
      {
        paramপ.ʰ(4);
        paramপ.readInt();
        paramপ.readInt();
      }
      else if (k == ᒶ.vL)
      {
        localᓘ = ˋ(paramপ, i, j);
      }
      i += j;
    }
    return localᓘ;
  }
  
  public static ᓛ ˊ(ᓖ paramᓖ, ᒶ.if paramif)
  {
    প localপ1 = paramif.ܝ(ᒶ.wc).wi;
    Object localObject2 = paramif.ܝ(ᒶ.wd);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = paramif.ܝ(ᒶ.we);
    }
    প localপ2 = ((ᒶ.ˊ)localObject1).wi;
    প localপ3 = paramif.ܝ(ᒶ.wb).wi;
    প localপ4 = paramif.ܝ(ᒶ.vY).wi;
    localObject2 = paramif.ܝ(ᒶ.vZ);
    if (localObject2 != null) {
      localObject2 = ((ᒶ.ˊ)localObject2).wi;
    } else {
      localObject2 = null;
    }
    paramif = paramif.ܝ(ᒶ.wa);
    if (paramif != null) {
      paramif = paramif.wi;
    } else {
      paramif = null;
    }
    localপ1.setPosition(12);
    int i15 = localপ1.ѕ();
    int i16 = localপ1.ѕ();
    int[] arrayOfInt1 = new int[i16];
    long[] arrayOfLong1 = new long[i16];
    long[] arrayOfLong2 = new long[i16];
    int[] arrayOfInt2 = new int[i16];
    localপ2.setPosition(12);
    int i17 = localপ2.ѕ();
    localপ3.setPosition(12);
    int i6 = localপ3.ѕ() - 1;
    boolean bool;
    if (localপ3.readInt() == 1) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ˋ(bool, "stsc first chunk must be 1");
    int i5 = localপ3.ѕ();
    localপ3.ʰ(4);
    int j = -1;
    if (i6 > 0) {
      j = localপ3.ѕ() - 1;
    }
    int i7 = 0;
    int i3 = i5;
    localপ4.setPosition(12);
    int i10 = localপ4.ѕ() - 1;
    int i12 = localপ4.ѕ();
    int i11 = localপ4.ѕ();
    int i = 0;
    int k = 0;
    int m = 0;
    if (paramif != null)
    {
      paramif.setPosition(12);
      k = paramif.ѕ() - 1;
      i = paramif.ѕ();
      m = paramif.readInt();
    }
    int n = -1;
    int i1 = 0;
    if (localObject2 != null)
    {
      ((প)localObject2).setPosition(12);
      i1 = ((প)localObject2).ѕ();
      n = ((প)localObject2).ѕ() - 1;
    }
    long l1;
    if (((ᒶ.ˊ)localObject1).type == ᒶ.wd) {
      l1 = localপ2.ϒ();
    } else {
      l1 = localপ2.ӧ();
    }
    long l2 = 0L;
    int i4 = 0;
    int i9 = i1;
    int i2 = m;
    i1 = k;
    int i8 = i;
    m = i12;
    i = i5;
    k = i6;
    while (i4 < i16)
    {
      arrayOfLong2[i4] = l1;
      if (i15 == 0) {
        i5 = localপ1.ѕ();
      } else {
        i5 = i15;
      }
      arrayOfInt1[i4] = i5;
      arrayOfLong1[i4] = (i2 + l2);
      if (localObject2 == null) {
        i5 = 1;
      } else {
        i5 = 0;
      }
      arrayOfInt2[i4] = i5;
      i6 = n;
      i5 = i9;
      if (i4 == n)
      {
        arrayOfInt2[i4] = 1;
        i9 -= 1;
        i6 = n;
        i5 = i9;
        if (i9 > 0)
        {
          i6 = ((প)localObject2).ѕ() - 1;
          i5 = i9;
        }
      }
      long l3 = l2 + i11;
      n = m - 1;
      i12 = i10;
      m = n;
      i9 = i11;
      if (n == 0)
      {
        i12 = i10;
        m = n;
        i9 = i11;
        if (i10 > 0)
        {
          m = localপ4.ѕ();
          i9 = localপ4.ѕ();
          i12 = i10 - 1;
        }
      }
      n = i8;
      int i14 = i1;
      int i13 = i2;
      if (paramif != null)
      {
        i8 -= 1;
        n = i8;
        i14 = i1;
        i13 = i2;
        if (i8 == 0)
        {
          n = i8;
          i14 = i1;
          i13 = i2;
          if (i1 > 0)
          {
            n = paramif.ѕ();
            i13 = paramif.readInt();
            i14 = i1 - 1;
          }
        }
      }
      i3 -= 1;
      if (i3 == 0)
      {
        i10 = i7 + 1;
        if (i10 < i17) {
          if (((ᒶ.ˊ)localObject1).type == ᒶ.wd) {
            l1 = localপ2.ϒ();
          } else {
            l1 = localপ2.ӧ();
          }
        }
        i1 = k;
        i2 = j;
        if (i10 == j)
        {
          i7 = localপ3.ѕ();
          localপ3.ʰ(4);
          k -= 1;
          i1 = k;
          i = i7;
          i2 = j;
          if (k > 0)
          {
            i2 = localপ3.ѕ() - 1;
            i = i7;
            i1 = k;
          }
        }
        k = i1;
        i8 = i;
        j = i2;
        i7 = i10;
        l2 = l1;
        if (i10 < i17)
        {
          i3 = i;
          k = i1;
          i8 = i;
          j = i2;
          i7 = i10;
          l2 = l1;
        }
      }
      else
      {
        l2 = l1 + arrayOfInt1[i4];
        i8 = i;
      }
      i4 += 1;
      i = i8;
      i10 = i12;
      i11 = i9;
      i8 = n;
      i1 = i14;
      i2 = i13;
      n = i6;
      i9 = i5;
      l1 = l2;
      l2 = l3;
    }
    ผ.ˊ(arrayOfLong1, 1000000L, paramᓖ.wF);
    if (i9 == 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    if (m == 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    if (i3 == 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    if (i10 == 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    if (i1 == 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    return new ᓛ(arrayOfLong2, arrayOfInt1, arrayOfLong1, arrayOfInt2);
  }
  
  private static void ˊ(প paramপ, int paramInt1, int paramInt2, int paramInt3, long paramLong, ᒷ.if paramif, int paramInt4)
  {
    paramপ.setPosition(paramInt2 + 8);
    paramপ.ʰ(16);
    int m = paramপ.readUnsignedShort();
    int i1 = paramপ.readUnsignedShort();
    paramপ.ʰ(4);
    int j = paramপ.Ϝ();
    Object localObject1 = null;
    int i = paramপ.getPosition();
    while (i - paramInt2 < paramInt3)
    {
      paramপ.setPosition(i);
      int i3 = paramপ.getPosition();
      int i2 = paramপ.readInt();
      boolean bool;
      if (i2 > 0) {
        bool = true;
      } else {
        bool = false;
      }
      ړ.ˊ(bool, "childAtomSize should be positive");
      int i4 = paramপ.readInt();
      Object localObject2;
      int n;
      int k;
      if ((paramInt1 == ᒶ.vk) || (paramInt1 == ᒶ.vO))
      {
        if (i4 == ᒶ.vi)
        {
          localObject2 = ʻ(paramপ, i3);
          localObject1 = ܐ.ι((byte[])localObject2);
          n = ((Integer)((Pair)localObject1).first).intValue();
          k = ((Integer)((Pair)localObject1).second).intValue();
        }
        else
        {
          k = m;
          n = j;
          localObject2 = localObject1;
          if (i4 == ᒶ.vJ)
          {
            paramif.wj[paramInt4] = ˊ(paramপ, i3, i2);
            k = m;
            n = j;
            localObject2 = localObject1;
          }
        }
      }
      else
      {
        if ((paramInt1 == ᒶ.vl) && (i4 == ᒶ.vm))
        {
          paramপ.setPosition(i3 + 8);
          paramif.wk = ٻ.ʼ(paramপ);
          return;
        }
        k = m;
        n = j;
        localObject2 = localObject1;
        if (paramInt1 == ᒶ.vn)
        {
          k = m;
          n = j;
          localObject2 = localObject1;
          if (i4 == ᒶ.vo)
          {
            paramপ.setPosition(i3 + 8);
            paramif.wk = ٻ.ʽ(paramপ);
            return;
          }
        }
      }
      i += i2;
      m = k;
      j = n;
      localObject1 = localObject2;
    }
    if (paramInt1 == ᒶ.vl) {
      paramপ = "audio/ac3";
    } else if (paramInt1 == ᒶ.vn) {
      paramপ = "audio/eac3";
    } else {
      paramপ = "audio/mp4a-latm";
    }
    if (localObject1 == null) {
      localObject1 = null;
    } else {
      localObject1 = Collections.singletonList(localObject1);
    }
    paramif.wk = ب.ˋ(paramপ, i1, paramLong, m, j, (List)localObject1);
  }
  
  private static void ˊ(প paramপ, int paramInt1, int paramInt2, long paramLong, ᒷ.if paramif, int paramInt3)
  {
    paramপ.setPosition(paramInt1 + 8);
    paramপ.ʰ(24);
    int j = paramপ.readUnsignedShort();
    int k = paramপ.readUnsignedShort();
    float f = 1.0F;
    paramপ.ʰ(50);
    Object localObject1 = null;
    int i = paramপ.getPosition();
    while (i - paramInt1 < paramInt2)
    {
      paramপ.setPosition(i);
      int m = paramপ.getPosition();
      int n = paramপ.readInt();
      if ((n == 0) && (paramপ.getPosition() - paramInt1 == paramInt2)) {
        break;
      }
      boolean bool;
      if (n > 0) {
        bool = true;
      } else {
        bool = false;
      }
      ړ.ˊ(bool, "childAtomSize should be positive");
      int i1 = paramপ.readInt();
      Object localObject2;
      if (i1 == ᒶ.vA)
      {
        localObject1 = ˏ(paramপ, m);
        localObject2 = (List)((Pair)localObject1).first;
        paramif.wl = ((Integer)((Pair)localObject1).second).intValue();
      }
      else if (i1 == ᒶ.vJ)
      {
        paramif.wj[paramInt3] = ˊ(paramপ, m, n);
        localObject2 = localObject1;
      }
      else
      {
        localObject2 = localObject1;
        if (i1 == ᒶ.vT)
        {
          f = ᐝ(paramপ, m);
          localObject2 = localObject1;
        }
      }
      i += n;
      localObject1 = localObject2;
    }
    paramif.wk = ب.ˊ("video/avc", -1, paramLong, j, k, f, (List)localObject1);
  }
  
  private static Pair<Integer, Long> ˋ(প paramপ)
  {
    paramপ.setPosition(8);
    int n = ᒶ.د(paramপ.readInt());
    int i;
    if (n == 0) {
      i = 8;
    } else {
      i = 16;
    }
    paramপ.ʰ(i);
    int i1 = paramপ.readInt();
    paramপ.ʰ(4);
    int m = 1;
    int i2 = paramপ.getPosition();
    if (n == 0) {
      i = 4;
    } else {
      i = 8;
    }
    int j = 0;
    int k;
    for (;;)
    {
      k = m;
      if (j >= i) {
        break;
      }
      if (paramপ.fw[(i2 + j)] != -1)
      {
        k = 0;
        break;
      }
      j += 1;
    }
    long l;
    if (k != 0)
    {
      paramপ.ʰ(i);
      l = -1L;
    }
    else if (n == 0)
    {
      l = paramপ.ϒ();
    }
    else
    {
      l = paramপ.ӧ();
    }
    return Pair.create(Integer.valueOf(i1), Long.valueOf(l));
  }
  
  private static ᓘ ˋ(প paramপ, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + 8;
    while (i - paramInt1 < paramInt2)
    {
      paramপ.setPosition(i);
      int j = paramপ.readInt();
      if (paramপ.readInt() == ᒶ.vM)
      {
        paramপ.ʰ(4);
        paramInt1 = paramপ.readInt();
        boolean bool;
        if (paramInt1 >> 8 == 1) {
          bool = true;
        } else {
          bool = false;
        }
        byte[] arrayOfByte = new byte[16];
        paramপ.ι(arrayOfByte, 0, arrayOfByte.length);
        return new ᓘ(bool, paramInt1 & 0xFF, arrayOfByte);
      }
      i += j;
    }
    return null;
  }
  
  private static int ˎ(প paramপ)
  {
    paramপ.setPosition(16);
    return paramপ.readInt();
  }
  
  private static long ˏ(প paramপ)
  {
    paramপ.setPosition(8);
    int i;
    if (ᒶ.د(paramপ.readInt()) == 0) {
      i = 8;
    } else {
      i = 16;
    }
    paramপ.ʰ(i);
    return paramপ.ϒ();
  }
  
  private static Pair<List<byte[]>, Integer> ˏ(প paramপ, int paramInt)
  {
    paramপ.setPosition(paramInt + 8 + 4);
    int i = (paramপ.readUnsignedByte() & 0x3) + 1;
    if (i == 3) {
      throw new IllegalStateException();
    }
    ArrayList localArrayList = new ArrayList();
    int j = paramপ.readUnsignedByte();
    paramInt = 0;
    while (paramInt < (j & 0x1F))
    {
      localArrayList.add(ܫ.ͺ(paramপ));
      paramInt += 1;
    }
    j = paramপ.readUnsignedByte();
    paramInt = 0;
    while (paramInt < j)
    {
      localArrayList.add(ܫ.ͺ(paramপ));
      paramInt += 1;
    }
    return Pair.create(localArrayList, Integer.valueOf(i));
  }
  
  private static float ᐝ(প paramপ, int paramInt)
  {
    paramপ.setPosition(paramInt + 8);
    paramInt = paramপ.ѕ();
    int i = paramপ.ѕ();
    return paramInt / i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á·
 * JD-Core Version:    0.7.0.1
 */