package o;

import android.net.Uri;
import android.os.SystemClock;
import android.util.SparseArray;
import java.io.IOException;

public class ᒭ
  implements ڒ, ᒬ, ס.if
{
  private volatile ᐯ rz;
  private final ϒ tF;
  private IOException uA;
  private boolean uB;
  private int uC;
  private long uD;
  private boolean uE;
  private int uF;
  private int uG;
  private final ᒎ ub;
  private final ѕ uc;
  private final int ud;
  private final SparseArray<ᒭ.ˊ> ue;
  private final int uf;
  private final boolean ug;
  private volatile boolean uh;
  private volatile ᒲ ui;
  private boolean uj;
  private int uk;
  private ڕ[] ul;
  private long um;
  private boolean[] un;
  private boolean[] uo;
  private boolean[] uq;
  private int ur;
  private final Uri uri;
  private long us;
  private long ut;
  private long uu;
  private boolean uv;
  private long uw;
  private long ux;
  private ס uy;
  private ᒭ.if uz;
  
  public ᒭ(Uri paramUri, ϒ paramϒ, ᒎ paramᒎ, int paramInt1, int paramInt2)
  {
    this(paramUri, paramϒ, paramᒎ, paramInt1, paramInt2, -1);
  }
  
  public ᒭ(Uri paramUri, ϒ paramϒ, ᒎ paramᒎ, int paramInt1, int paramInt2, int paramInt3)
  {
    this.uri = paramUri;
    this.tF = paramϒ;
    this.ub = paramᒎ;
    this.ur = paramInt1;
    this.ud = paramInt2;
    this.uf = paramInt3;
    this.ue = new SparseArray();
    this.uc = new ѕ(262144);
    this.uu = -1L;
    this.ug = true;
    paramᒎ.ˊ(this);
  }
  
  private boolean ᒲ()
  {
    ᒳ();
    if (ᓛ()) {
      return false;
    }
    boolean bool;
    if ((this.uj) && (ᓖ())) {
      bool = true;
    } else {
      bool = false;
    }
    if (!bool) {
      ᒶ();
    }
    return bool;
  }
  
  private void ᒳ()
  {
    if ((this.uB) || (this.uE) || (this.uy.ƨ())) {
      return;
    }
    if (this.uA != null)
    {
      boolean bool;
      if (this.uz != null) {
        bool = true;
      } else {
        bool = false;
      }
      ړ.ᐟ(bool);
      if (SystemClock.elapsedRealtime() - this.uD >= ⁱ(this.uC))
      {
        this.uA = null;
        int i;
        if (!this.uj)
        {
          i = 0;
          while (i < this.ue.size())
          {
            ((ᒭ.ˊ)this.ue.valueAt(i)).clear();
            i += 1;
          }
          this.uz = ᒷ();
        }
        else if (!this.ui.ᚆ())
        {
          i = 0;
          while (i < this.ue.size())
          {
            ((ᒭ.ˊ)this.ue.valueAt(i)).clear();
            i += 1;
          }
          this.uz = ᒷ();
          this.uw = this.us;
          this.uv = true;
        }
        this.uG = this.uF;
        this.uy.ˊ(this.uz, this);
      }
      return;
    }
    this.ux = 0L;
    this.uv = false;
    if (!this.uj)
    {
      this.uz = ᒷ();
    }
    else
    {
      ړ.ᐟ(ᓛ());
      if ((this.um != -1L) && (this.uu >= this.um))
      {
        this.uE = true;
        this.uu = -1L;
        return;
      }
      this.uz = ᵔ(this.uu);
      this.uu = -1L;
    }
    this.uG = this.uF;
    this.uy.ˊ(this.uz, this);
  }
  
  private void ᒶ()
  {
    if (this.uA == null) {
      return;
    }
    if (this.uB) {
      throw this.uA;
    }
    int i;
    if (this.uf != -1) {
      i = this.uf;
    } else if ((this.ui != null) && (!this.ui.ᚆ())) {
      i = 6;
    } else {
      i = 3;
    }
    if (this.uC > i) {
      throw this.uA;
    }
  }
  
  private ᒭ.if ᒷ()
  {
    return new ᒭ.if(this.uri, this.tF, this.ub, this.uc, this.ud, 0L);
  }
  
  private boolean ᒺ()
  {
    int i = 0;
    while (i < this.ue.size())
    {
      if (!((ᒭ.ˊ)this.ue.valueAt(i)).ᒎ()) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private boolean ᓖ()
  {
    int i = 0;
    while (i < this.uq.length)
    {
      if ((this.uq[i] != 0) && (!((ᒭ.ˊ)this.ue.valueAt(i)).isEmpty())) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private void ᓘ()
  {
    int i = 0;
    while (i < this.ue.size())
    {
      ((ᒭ.ˊ)this.ue.valueAt(i)).clear();
      i += 1;
    }
    this.uz = null;
    this.uA = null;
    this.uC = 0;
    this.uB = false;
  }
  
  private boolean ᓛ()
  {
    return this.uu != -1L;
  }
  
  private void ᵎ(long paramLong)
  {
    this.uu = paramLong;
    this.uE = false;
    if (this.uy.ƨ())
    {
      this.uy.ƫ();
      return;
    }
    ᓘ();
    ᒳ();
  }
  
  private ᒭ.if ᵔ(long paramLong)
  {
    return new ᒭ.if(this.uri, this.tF, this.ub, this.uc, this.ud, this.ui.ｰ(paramLong));
  }
  
  private void ᵢ(long paramLong)
  {
    int i = 0;
    while (i < this.uq.length)
    {
      if (this.uq[i] == 0) {
        ((ᒭ.ˊ)this.ue.valueAt(i)).ٴ(paramLong);
      }
      i += 1;
    }
  }
  
  private long ⁱ(long paramLong)
  {
    return Math.min((paramLong - 1L) * 1000L, 5000L);
  }
  
  public int getTrackCount()
  {
    return this.ue.size();
  }
  
  public void release()
  {
    boolean bool;
    if (this.ur > 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    int i = this.ur - 1;
    this.ur = i;
    if ((i == 0) && (this.uy != null))
    {
      this.uy.release();
      this.uy = null;
    }
  }
  
  public int ˊ(int paramInt, long paramLong, م paramم, ڋ paramڋ, boolean paramBoolean)
  {
    this.us = paramLong;
    if (this.uo[paramInt] != 0)
    {
      this.uo[paramInt] = false;
      return -5;
    }
    if ((paramBoolean) || (ᓛ()))
    {
      ᒶ();
      return -2;
    }
    ᒭ.ˊ localˊ = (ᒭ.ˊ)this.ue.valueAt(paramInt);
    if (this.un[paramInt] != 0)
    {
      paramم.ry = localˊ.ᒑ();
      paramم.rz = this.rz;
      this.un[paramInt] = false;
      return -4;
    }
    if (localˊ.ˊ(paramڋ))
    {
      if ((this.ug) && (paramڋ.sJ < this.ut)) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      int i = paramڋ.flags;
      if (paramInt != 0) {
        paramInt = 134217728;
      } else {
        paramInt = 0;
      }
      paramڋ.flags = (i | paramInt);
      if (this.uv)
      {
        this.ux = (this.uw - paramڋ.sJ);
        this.uv = false;
      }
      paramڋ.sJ += this.ux;
      return -3;
    }
    if (this.uE) {
      return -1;
    }
    ᒶ();
    return -2;
  }
  
  public void ˊ(ס.ˋ paramˋ)
  {
    this.uE = true;
  }
  
  public void ˊ(ס.ˋ paramˋ, IOException paramIOException)
  {
    this.uA = paramIOException;
    int i;
    if (this.uF > this.uG) {
      i = 1;
    } else {
      i = this.uC + 1;
    }
    this.uC = i;
    this.uD = SystemClock.elapsedRealtime();
    ᒳ();
  }
  
  public void ˊ(ᒲ paramᒲ)
  {
    this.ui = paramᒲ;
  }
  
  public void ˋ(ס.ˋ paramˋ)
  {
    if (this.uk > 0)
    {
      ᵎ(this.uu);
      return;
    }
    ᓘ();
    this.uc.Ȉ(0);
  }
  
  public void ˏ(int paramInt, long paramLong)
  {
    ړ.ᐟ(this.uj);
    boolean bool;
    if (this.uq[paramInt] == 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.uk += 1;
    this.uq[paramInt] = true;
    this.un[paramInt] = true;
    if (this.uk == 1) {
      ﹳ(paramLong);
    }
  }
  
  public ڕ ϊ(int paramInt)
  {
    ړ.ᐟ(this.uj);
    return this.ul[paramInt];
  }
  
  public void ג(int paramInt)
  {
    ړ.ᐟ(this.uj);
    ړ.ᐟ(this.uq[paramInt]);
    this.uk -= 1;
    this.uq[paramInt] = false;
    this.uo[paramInt] = false;
    if (this.uk == 0)
    {
      if (this.uy.ƨ())
      {
        this.uy.ƫ();
        return;
      }
      ᓘ();
      this.uc.Ȉ(0);
    }
  }
  
  public ᒳ ר(int paramInt)
  {
    ᒭ.ˊ localˊ2 = (ᒭ.ˊ)this.ue.get(paramInt);
    ᒭ.ˊ localˊ1 = localˊ2;
    if (localˊ2 == null)
    {
      localˊ1 = new ᒭ.ˊ(this, this.uc);
      this.ue.put(paramInt, localˊ1);
    }
    return localˊ1;
  }
  
  public boolean ᐧ(long paramLong)
  {
    if (this.uj) {
      return true;
    }
    if (this.uy == null) {
      this.uy = new ס("Loader:ExtractorSampleSource");
    }
    ᒲ();
    if ((this.ui != null) && (this.uh) && (ᒺ()))
    {
      int j = this.ue.size();
      this.uq = new boolean[j];
      this.uo = new boolean[j];
      this.un = new boolean[j];
      this.ul = new ڕ[j];
      this.um = -1L;
      int i = 0;
      while (i < j)
      {
        ب localب = ((ᒭ.ˊ)this.ue.valueAt(i)).ᒑ();
        this.ul[i] = new ڕ(localب.mimeType, localب.re);
        if ((localب.re != -1L) && (localب.re > this.um)) {
          this.um = localب.re;
        }
        i += 1;
      }
      this.uj = true;
      return true;
    }
    ᒶ();
    return false;
  }
  
  public boolean ᐨ(long paramLong)
  {
    ړ.ᐟ(this.uj);
    boolean bool;
    if (this.uk > 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.us = paramLong;
    ᵢ(this.us);
    return (this.uE) || (ᒲ());
  }
  
  public void ᒯ()
  {
    this.uh = true;
  }
  
  public void ﹳ(long paramLong)
  {
    ړ.ᐟ(this.uj);
    boolean bool;
    if (this.uk > 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    if (!this.ui.ᚆ()) {
      paramLong = 0L;
    }
    this.ut = paramLong;
    long l;
    if (ᓛ()) {
      l = this.uu;
    } else {
      l = this.us;
    }
    if (l == paramLong) {
      return;
    }
    this.us = paramLong;
    if (!ᓛ()) {
      i = 1;
    } else {
      i = 0;
    }
    int k = 0;
    while ((i != 0) && (k < this.ue.size()))
    {
      i &= ((ᒭ.ˊ)this.ue.valueAt(k)).ᴵ(paramLong);
      k += 1;
    }
    if (i == 0) {
      ᵎ(paramLong);
    }
    int i = 0;
    while (i < this.uo.length)
    {
      this.uo[i] = true;
      int j;
      i += 1;
    }
  }
  
  public long ﻥ()
  {
    if (this.uE) {
      return -3L;
    }
    if (ᓛ()) {
      return this.uu;
    }
    long l = -9223372036854775808L;
    int i = 0;
    while (i < this.ue.size())
    {
      l = Math.max(l, ((ᒭ.ˊ)this.ue.valueAt(i)).ᒬ());
      i += 1;
    }
    if (l == -9223372036854775808L) {
      return this.us;
    }
    return l;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á­
 * JD-Core Version:    0.7.0.1
 */