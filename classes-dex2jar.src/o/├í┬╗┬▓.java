package o;

import android.util.SparseArray;
import android.util.SparseBooleanArray;

public final class Ỳ
  implements ᒎ, ᒲ
{
  private final long wR;
  private final প xr;
  private final ন xs;
  final SparseBooleanArray xt;
  final SparseBooleanArray xu;
  final SparseArray<Ỳ.ˎ> xv;
  private ᒬ xw;
  private long xx;
  private long xy;
  ᴒ xz;
  
  public Ỳ()
  {
    this(0L, null);
  }
  
  public Ỳ(long paramLong, ۂ paramۂ)
  {
    this.wR = paramLong;
    this.xs = new ন(new byte[3]);
    this.xr = new প(188);
    this.xt = new SparseBooleanArray();
    this.xu = ˊ(paramۂ);
    this.xv = new SparseArray();
    this.xv.put(0, new Ỳ.if(this));
    this.xy = -9223372036854775808L;
  }
  
  private static SparseBooleanArray ˊ(ۂ paramۂ)
  {
    SparseBooleanArray localSparseBooleanArray = new SparseBooleanArray();
    if (paramۂ != null)
    {
      if (paramۂ.ז(5)) {
        localSparseBooleanArray.put(129, true);
      }
      paramۂ.ז(6);
    }
    return localSparseBooleanArray;
  }
  
  long ˆ(long paramLong)
  {
    long l1 = paramLong;
    if (this.xy != -9223372036854775808L)
    {
      long l2 = (this.xy + 4294967295L) / 8589934591L;
      l1 = paramLong + (l2 - 1L) * 8589934591L;
      paramLong += 8589934591L * l2;
      if (Math.abs(l1 - this.xy) >= Math.abs(paramLong - this.xy)) {
        l1 = paramLong;
      }
    }
    paramLong = 1000000L * l1 / 90000L;
    if (this.xy == -9223372036854775808L) {
      this.xx = (this.wR - paramLong);
    }
    this.xy = l1;
    return this.xx + paramLong;
  }
  
  public int ˊ(ᒑ paramᒑ, ᒮ paramᒮ)
  {
    if (!paramᒑ.ˊ(this.xr.fw, 0, 188, true)) {
      return -1;
    }
    this.xr.setPosition(0);
    this.xr.ʟ(188);
    if (this.xr.readUnsignedByte() != 71) {
      return 0;
    }
    this.xr.ˋ(this.xs, 3);
    this.xs.ɪ(1);
    boolean bool1 = this.xs.ʎ();
    this.xs.ɪ(1);
    int i = this.xs.ɾ(13);
    this.xs.ɪ(2);
    boolean bool2 = this.xs.ʎ();
    boolean bool3 = this.xs.ʎ();
    if (bool2)
    {
      int j = this.xr.readUnsignedByte();
      this.xr.ʰ(j);
    }
    if (bool3)
    {
      paramᒑ = (Ỳ.ˎ)this.xv.get(i);
      if (paramᒑ != null) {
        paramᒑ.ˊ(this.xr, bool1, this.xw);
      }
    }
    return 0;
  }
  
  public void ˊ(ᒬ paramᒬ)
  {
    this.xw = paramᒬ;
    paramᒬ.ˊ(this);
  }
  
  public void ᒮ()
  {
    this.xx = 0L;
    this.xy = -9223372036854775808L;
    int i = 0;
    while (i < this.xv.size())
    {
      ((Ỳ.ˎ)this.xv.valueAt(i)).ᒮ();
      i += 1;
    }
  }
  
  public boolean ᚆ()
  {
    return false;
  }
  
  public long ｰ(long paramLong)
  {
    return 0L;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»²
 * JD-Core Version:    0.7.0.1
 */