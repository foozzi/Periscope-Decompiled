package org.spongycastle.pqc.math.ntru.euclid;

public class IntEuclidean
{
  public int bjw;
  public int x;
  public int y;
  
  public static IntEuclidean וּ(int paramInt1, int paramInt2)
  {
    int n = 0;
    int m = 1;
    int i = 1;
    int k = 0;
    int j = paramInt1;
    paramInt1 = n;
    for (;;)
    {
      n = j;
      if (paramInt2 == 0) {
        break;
      }
      int i1 = n / paramInt2;
      j = paramInt2;
      paramInt2 = n % paramInt2;
      n = m - i1 * paramInt1;
      m = paramInt1;
      i1 = k - i1 * i;
      k = i;
      paramInt1 = n;
      i = i1;
    }
    IntEuclidean localIntEuclidean = new IntEuclidean();
    localIntEuclidean.x = m;
    localIntEuclidean.y = k;
    localIntEuclidean.bjw = n;
    return localIntEuclidean;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.euclid.IntEuclidean
 * JD-Core Version:    0.7.0.1
 */