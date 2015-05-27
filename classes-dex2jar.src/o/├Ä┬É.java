package o;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

class ΐ
  implements ز.if
{
  private static final ΐ.if hH = new ΐ.if();
  private static final Handler hI = new Handler(Looper.getMainLooper(), new ΐ.ˊ(null));
  private final ExecutorService eP;
  private final ExecutorService eQ;
  private final boolean en;
  private final Γ hA;
  private final ﮆ hG;
  private final List<ᘆ> hJ = new ArrayList();
  private final ΐ.if hK;
  private ڔ<?> hL;
  private boolean hM;
  private Exception hN;
  private boolean hO;
  private Set<ᘆ> hP;
  private ز hQ;
  private ץ<?> hR;
  private volatile Future<?> hS;
  private boolean hb;
  
  public ΐ(ﮆ paramﮆ, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, boolean paramBoolean, Γ paramΓ)
  {
    this(paramﮆ, paramExecutorService1, paramExecutorService2, paramBoolean, paramΓ, hH);
  }
  
  public ΐ(ﮆ paramﮆ, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, boolean paramBoolean, Γ paramΓ, ΐ.if paramif)
  {
    this.hG = paramﮆ;
    this.eQ = paramExecutorService1;
    this.eP = paramExecutorService2;
    this.en = paramBoolean;
    this.hA = paramΓ;
    this.hK = paramif;
  }
  
  private void ˎ(ᘆ paramᘆ)
  {
    if (this.hP == null) {
      this.hP = new HashSet();
    }
    this.hP.add(paramᘆ);
  }
  
  private boolean ˏ(ᘆ paramᘆ)
  {
    return (this.hP != null) && (this.hP.contains(paramᘆ));
  }
  
  private void จ()
  {
    if (this.hb)
    {
      this.hL.recycle();
      return;
    }
    if (this.hJ.isEmpty()) {
      throw new IllegalStateException("Received a resource without any callbacks to notify");
    }
    this.hR = this.hK.ˊ(this.hL, this.en);
    this.hM = true;
    this.hR.acquire();
    this.hA.ˊ(this.hG, this.hR);
    Iterator localIterator = this.hJ.iterator();
    while (localIterator.hasNext())
    {
      ᘆ localᘆ = (ᘆ)localIterator.next();
      if (!ˏ(localᘆ))
      {
        this.hR.acquire();
        localᘆ.ʼ(this.hR);
      }
    }
    this.hR.release();
  }
  
  private void แ()
  {
    if (this.hb) {
      return;
    }
    if (this.hJ.isEmpty()) {
      throw new IllegalStateException("Received an exception without any callbacks to notify");
    }
    this.hO = true;
    this.hA.ˊ(this.hG, null);
    Iterator localIterator = this.hJ.iterator();
    while (localIterator.hasNext())
    {
      ᘆ localᘆ = (ᘆ)localIterator.next();
      if (!ˏ(localᘆ)) {
        localᘆ.ˊ(this.hN);
      }
    }
  }
  
  void cancel()
  {
    if ((this.hO) || (this.hM) || (this.hb)) {
      return;
    }
    this.hQ.cancel();
    Future localFuture = this.hS;
    if (localFuture != null) {
      localFuture.cancel(true);
    }
    this.hb = true;
    this.hA.ˊ(this, this.hG);
  }
  
  public void ʼ(ڔ<?> paramڔ)
  {
    this.hL = paramڔ;
    hI.obtainMessage(1, this).sendToTarget();
  }
  
  public void ˊ(Exception paramException)
  {
    this.hN = paramException;
    hI.obtainMessage(2, this).sendToTarget();
  }
  
  public void ˊ(ز paramز)
  {
    this.hQ = paramز;
    this.hS = this.eQ.submit(paramز);
  }
  
  public void ˊ(ᘆ paramᘆ)
  {
    
    if (this.hM)
    {
      paramᘆ.ʼ(this.hR);
      return;
    }
    if (this.hO)
    {
      paramᘆ.ˊ(this.hN);
      return;
    }
    this.hJ.add(paramᘆ);
  }
  
  public void ˋ(ز paramز)
  {
    this.hS = this.eP.submit(paramز);
  }
  
  public void ˋ(ᘆ paramᘆ)
  {
    
    if ((this.hM) || (this.hO))
    {
      ˎ(paramᘆ);
      return;
    }
    this.hJ.remove(paramᘆ);
    if (this.hJ.isEmpty()) {
      cancel();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î
 * JD-Core Version:    0.7.0.1
 */