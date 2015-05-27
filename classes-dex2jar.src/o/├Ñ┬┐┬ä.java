package o;

import android.os.Handler;
import android.os.SystemClock;
import java.io.IOException;
import java.util.LinkedList;

public class 忄
  implements ڒ, ס.if
{
  private final Handler qK;
  private IOException uA;
  private boolean uB;
  private int uC;
  private long uD;
  private boolean uE;
  private final ʎ uK;
  private final int ud;
  private final int uf;
  private final boolean ug;
  private boolean uj;
  private int uk;
  private ڕ[] ul;
  private boolean[] uo;
  private boolean[] uq;
  private int ur;
  private long us;
  private long ut;
  private long uu;
  private ס uy;
  private final Ỵ yM;
  private final LinkedList<ἶ> yN;
  private final long yO;
  private final int yP;
  private final 忄.if yQ;
  private int yR;
  private ب[] yS;
  private ব yT;
  private ｕ yU;
  private र yV;
  private long yW;
  
  public 忄(Ỵ paramỴ, boolean paramBoolean, int paramInt1, int paramInt2, long paramLong, Handler paramHandler, 忄.if paramif, int paramInt3)
  {
    this(paramỴ, paramBoolean, paramInt1, paramInt2, paramLong, paramHandler, paramif, paramInt3, 3);
  }
  
  public 忄(Ỵ paramỴ, boolean paramBoolean, int paramInt1, int paramInt2, long paramLong, Handler paramHandler, 忄.if paramif, int paramInt3, int paramInt4)
  {
    this.yM = paramỴ;
    this.ug = paramBoolean;
    this.ur = paramInt1;
    this.ud = paramInt2;
    this.yO = (1000L * paramLong);
    this.uf = paramInt4;
    this.qK = paramHandler;
    this.yQ = paramif;
    this.yP = paramInt3;
    this.uu = -1L;
    this.yN = new LinkedList();
    this.uK = new ѕ(262144);
  }
  
  private void ˊ(long paramLong1, int paramInt1, int paramInt2, ব paramব, long paramLong2, long paramLong3)
  {
    if ((this.qK != null) && (this.yQ != null)) {
      this.qK.post(new אּ(this, paramLong1, paramInt1, paramInt2, paramব, paramLong2, paramLong3));
    }
  }
  
  private void ˊ(long paramLong1, int paramInt1, int paramInt2, ব paramব, long paramLong2, long paramLong3, long paramLong4, long paramLong5)
  {
    if ((this.qK != null) && (this.yQ != null)) {
      this.qK.post(new ﮋ(this, paramLong1, paramInt1, paramInt2, paramব, paramLong2, paramLong3, paramLong4, paramLong5));
    }
  }
  
  private void ˊ(IOException paramIOException)
  {
    if ((this.qK != null) && (this.yQ != null)) {
      this.qK.post(new ﺔ(this, paramIOException));
    }
  }
  
  private void ˊ(ব paramব, int paramInt, long paramLong)
  {
    if ((this.qK != null) && (this.yQ != null)) {
      this.qK.post(new ﺣ(this, paramব, paramInt, paramLong));
    }
  }
  
  private void ˊ(ἶ paramἶ, long paramLong)
  {
    if (!paramἶ.Ⅴ()) {
      return;
    }
    int i = 0;
    while (i < this.uq.length)
    {
      if (this.uq[i] == 0) {
        paramἶ.ʻ(i, paramLong);
      }
      i += 1;
    }
  }
  
  private boolean ˋ(र paramर)
  {
    return paramर instanceof ｕ;
  }
  
  private boolean ˋ(ἶ paramἶ)
  {
    if (!paramἶ.Ⅴ()) {
      return false;
    }
    int i = 0;
    while (i < this.uq.length)
    {
      if ((this.uq[i] != 0) && (paramἶ.ﺒ(i))) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private void ˡ(long paramLong)
  {
    if ((this.qK != null) && (this.yQ != null)) {
      this.qK.post(new ﺏ(this, paramLong));
    }
  }
  
  private boolean ᒲ()
  {
    ᒳ();
    if ((ᓛ()) || (this.yN.isEmpty())) {
      return false;
    }
    boolean bool;
    if ((this.uj) && (ˋ(ゞ()))) {
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
    int i;
    if (this.uA != null) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      if (SystemClock.elapsedRealtime() - this.uD >= ⁱ(this.uC))
      {
        this.uA = null;
        this.uy.ˊ(this.yV, this);
      }
      return;
    }
    if ((this.yU != null) && ((this.yU.tO - this.us >= this.yO) || (this.uK.ｱ() >= this.ud))) {
      return;
    }
    Object localObject = this.yM.ˊ(this.yU, this.uu, this.us);
    if (localObject == null) {
      return;
    }
    this.yW = SystemClock.elapsedRealtime();
    this.yV = ((र)localObject);
    if (ˋ(this.yV))
    {
      localObject = (ｕ)this.yV;
      if (ᓛ()) {
        this.uu = -1L;
      }
      ἶ localἶ = ((ｕ)localObject).zl;
      if ((this.yN.isEmpty()) || (this.yN.getLast() != localἶ))
      {
        localἶ.ˊ(this.uK);
        this.yN.addLast(localἶ);
      }
      ˊ(((ｕ)localObject).tE.length, ((ｕ)localObject).type, ((ｕ)localObject).tC, ((ｕ)localObject).tD, ((ｕ)localObject).tN, ((ｕ)localObject).tO);
      this.yU = ((ｕ)localObject);
    }
    else
    {
      ˊ(this.yV.tE.length, this.yV.type, this.yV.tC, this.yV.tD, -1L, -1L);
    }
    this.uy.ˊ(this.yV, this);
  }
  
  private void ᒶ()
  {
    if ((this.uA != null) && ((this.uB) || (this.uC > this.uf))) {
      throw this.uA;
    }
  }
  
  private void ᓘ()
  {
    int i = 0;
    while (i < this.yN.size())
    {
      ((ἶ)this.yN.get(i)).clear();
      i += 1;
    }
    this.yN.clear();
    イ();
    this.yU = null;
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
  
  private long ⁱ(long paramLong)
  {
    return Math.min((paramLong - 1L) * 1000L, 5000L);
  }
  
  private ἶ ゞ()
  {
    for (ἶ localἶ = (ἶ)this.yN.getFirst(); (this.yN.size() > 1) && (!ˋ(localἶ)); localἶ = (ἶ)this.yN.getFirst()) {
      ((ἶ)this.yN.removeFirst()).clear();
    }
    return localἶ;
  }
  
  private void イ()
  {
    this.yV = null;
    this.uA = null;
    this.uC = 0;
    this.uB = false;
  }
  
  public int getTrackCount()
  {
    ړ.ᐟ(this.uj);
    return this.yR;
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
  
  protected final int ˇ(long paramLong)
  {
    return (int)(paramLong / 1000L);
  }
  
  public int ˊ(int paramInt, long paramLong, م paramم, ڋ paramڋ, boolean paramBoolean)
  {
    ړ.ᐟ(this.uj);
    this.us = paramLong;
    if (this.uo[paramInt] != 0)
    {
      this.uo[paramInt] = false;
      return -5;
    }
    if (paramBoolean) {
      return -2;
    }
    if (ᓛ())
    {
      ᒶ();
      return -2;
    }
    Object localObject = ゞ();
    if ((this.yT == null) || (!this.yT.equals(((ἶ)localObject).tD)))
    {
      ˊ(((ἶ)localObject).tD, ((ἶ)localObject).tC, ((ἶ)localObject).tN);
      this.yT = ((ἶ)localObject).tD;
    }
    if (this.yN.size() > 1) {
      ((ἶ)localObject).ˊ((ἶ)this.yN.get(1));
    }
    int i = 0;
    while ((this.yN.size() > i + 1) && (!((ἶ)localObject).ﺒ(paramInt)))
    {
      localObject = this.yN;
      i += 1;
      localObject = (ἶ)((LinkedList)localObject).get(i);
    }
    if (!((ἶ)localObject).Ⅴ())
    {
      ᒶ();
      return -2;
    }
    ب localب = ((ἶ)localObject).ﭘ(paramInt);
    if ((localب != null) && (!localب.ˊ(this.yS[paramInt], true)))
    {
      paramم.ry = localب;
      this.yS[paramInt] = localب;
      return -4;
    }
    if (((ἶ)localObject).ˊ(paramInt, paramڋ))
    {
      if ((this.ug) && (paramڋ.sJ < this.ut)) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      i = paramڋ.flags;
      if (paramInt != 0) {
        paramInt = 134217728;
      } else {
        paramInt = 0;
      }
      paramڋ.flags = (i | paramInt);
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
    long l1 = SystemClock.elapsedRealtime();
    long l2 = l1 - this.yW;
    this.yM.ˊ(this.yV);
    if (ˋ(this.yV))
    {
      paramˋ = (ｕ)paramˋ;
      this.uE = paramˋ.tQ;
      ˊ(this.yV.ব(), paramˋ.type, paramˋ.tC, paramˋ.tD, paramˋ.tN, paramˋ.tO, l1, l2);
    }
    else
    {
      ˊ(this.yV.ব(), this.yV.type, this.yV.tC, this.yV.tD, -1L, -1L, l1, l2);
    }
    if (!this.uB) {
      イ();
    }
    if (this.uk > 0)
    {
      ᒳ();
      return;
    }
    ᓘ();
    this.uK.Ȉ(0);
  }
  
  public void ˊ(ס.ˋ paramˋ, IOException paramIOException)
  {
    if (this.yM.ˊ(this.yV, paramIOException))
    {
      イ();
    }
    else
    {
      this.uA = paramIOException;
      this.uC += 1;
      this.uD = SystemClock.elapsedRealtime();
    }
    ˊ(paramIOException);
    ᒳ();
  }
  
  public void ˋ(ס.ˋ paramˋ)
  {
    ˡ(this.yV.ব());
    if (this.uk > 0)
    {
      ᵎ(this.uu);
      return;
    }
    ᓘ();
    this.uK.Ȉ(0);
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
    this.yS[paramInt] = null;
    this.yT = null;
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
      this.uK.Ȉ(0);
    }
  }
  
  public boolean ᐧ(long paramLong)
  {
    if (this.uj) {
      return true;
    }
    if (!this.yN.isEmpty())
    {
      ἶ localἶ = (ἶ)this.yN.getFirst();
      if (localἶ.Ⅴ())
      {
        this.yR = localἶ.getTrackCount();
        this.uq = new boolean[this.yR];
        this.uo = new boolean[this.yR];
        this.yS = new ب[this.yR];
        this.ul = new ڕ[this.yR];
        int i = 0;
        while (i < this.yR)
        {
          ب localب = localἶ.ﭘ(i);
          this.ul[i] = new ڕ(localب.mimeType, this.yM.ﻤ());
          i += 1;
        }
        this.uj = true;
        return true;
      }
    }
    if (this.uy == null) {
      this.uy = new ס("Loader:HLS");
    }
    if (!this.uy.ƨ())
    {
      this.uu = paramLong;
      this.us = paramLong;
    }
    ᒳ();
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
    if (!this.yN.isEmpty()) {
      ˊ((ἶ)this.yN.getFirst(), this.us);
    }
    return (this.uE) || (ᒲ());
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
    int i = 0;
    while (i < this.uo.length)
    {
      this.uo[i] = true;
      i += 1;
    }
    ᵎ(paramLong);
  }
  
  public long ﻥ()
  {
    ړ.ᐟ(this.uj);
    boolean bool;
    if (this.uk > 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    if (ᓛ()) {
      return this.uu;
    }
    if (this.uE) {
      return -3L;
    }
    long l = ((ἶ)this.yN.getLast()).ᒬ();
    if (l == -9223372036854775808L) {
      return this.us;
    }
    return l;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.å¿
 * JD-Core Version:    0.7.0.1
 */