package org.spongycastle.pqc.math.ntru.util;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.spongycastle.pqc.math.ntru.euclid.IntEuclidean;
import org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.SparseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.TernaryPolynomial;
import org.spongycastle.util.Integers;

public class Util
{
  private static volatile boolean bjZ;
  private static volatile boolean bka;
  
  public static boolean tc()
  {
    if (!bjZ)
    {
      String str1 = System.getProperty("os.arch");
      String str2 = System.getProperty("sun.arch.data.model");
      boolean bool;
      if (("amd64".equals(str1)) || ("x86_64".equals(str1)) || ("ppc64".equals(str1)) || ("64".equals(str2))) {
        bool = true;
      } else {
        bool = false;
      }
      bka = bool;
      bjZ = true;
    }
    return bka;
  }
  
  public static TernaryPolynomial ˊ(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, SecureRandom paramSecureRandom)
  {
    if (paramBoolean) {
      return SparseTernaryPolynomial.ˋ(paramInt1, paramInt2, paramInt3, paramSecureRandom);
    }
    return DenseTernaryPolynomial.ˊ(paramInt1, paramInt2, paramInt3, paramSecureRandom);
  }
  
  public static int[] ˎ(int paramInt1, int paramInt2, int paramInt3, SecureRandom paramSecureRandom)
  {
    Integer localInteger1 = Integers.valueOf(1);
    Integer localInteger2 = Integers.valueOf(-1);
    Integer localInteger3 = Integers.valueOf(0);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramInt2)
    {
      localArrayList.add(localInteger1);
      i += 1;
    }
    paramInt2 = 0;
    while (paramInt2 < paramInt3)
    {
      localArrayList.add(localInteger2);
      paramInt2 += 1;
    }
    while (localArrayList.size() < paramInt1) {
      localArrayList.add(localInteger3);
    }
    Collections.shuffle(localArrayList, paramSecureRandom);
    paramSecureRandom = new int[paramInt1];
    paramInt2 = 0;
    while (paramInt2 < paramInt1)
    {
      paramSecureRandom[paramInt2] = ((Integer)localArrayList.get(paramInt2)).intValue();
      paramInt2 += 1;
    }
    return paramSecureRandom;
  }
  
  public static int ˡ(int paramInt1, int paramInt2, int paramInt3)
  {
    int j = 1;
    int i = 0;
    while (i < paramInt2)
    {
      j = j * paramInt1 % paramInt3;
      i += 1;
    }
    return j;
  }
  
  public static int וֹ(int paramInt1, int paramInt2)
  {
    int i = paramInt1 % paramInt2;
    paramInt1 = i;
    if (i < 0) {
      paramInt1 = i + paramInt2;
    }
    return IntEuclidean.וּ(paramInt1, paramInt2).x;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.util.Util
 * JD-Core Version:    0.7.0.1
 */