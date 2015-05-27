package o;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Set;

final class ﬥ$ˊ
{
  private IBinder DD;
  private ComponentName EC;
  private final ﬥ.ˊ.if ED;
  private final Set<ServiceConnection> EE;
  private boolean EF;
  private final ﬥ.if EG;
  private int mState;
  
  public ﬥ$ˊ(ﬥ paramﬥ, ﬥ.if paramif)
  {
    this.EG = paramif;
    this.ED = new ﬥ.ˊ.if(this);
    this.EE = new HashSet();
    this.mState = 2;
  }
  
  public IBinder getBinder()
  {
    return this.DD;
  }
  
  public ComponentName getComponentName()
  {
    return this.EC;
  }
  
  public int getState()
  {
    return this.mState;
  }
  
  public boolean isBound()
  {
    return this.EF;
  }
  
  public void ˊ(ServiceConnection paramServiceConnection, String paramString)
  {
    ﬥ.ˎ(this.EH).ˊ(ﬥ.ˋ(this.EH), paramServiceConnection, paramString, this.EG.ỵ());
    this.EE.add(paramServiceConnection);
  }
  
  public boolean ˊ(ServiceConnection paramServiceConnection)
  {
    return this.EE.contains(paramServiceConnection);
  }
  
  public void ˋ(ServiceConnection paramServiceConnection, String paramString)
  {
    ﬥ.ˎ(this.EH).ˋ(ﬥ.ˋ(this.EH), paramServiceConnection);
    this.EE.remove(paramServiceConnection);
  }
  
  public void ᵕ(String paramString)
  {
    this.EF = ﬥ.ˎ(this.EH).ˊ(ﬥ.ˋ(this.EH), paramString, this.EG.ỵ(), this.ED, 129);
    if (this.EF)
    {
      this.mState = 3;
      return;
    }
    ﬥ.ˎ(this.EH).ˊ(ﬥ.ˋ(this.EH), this.ED);
  }
  
  public void ᵣ(String paramString)
  {
    ﬥ.ˎ(this.EH).ˊ(ﬥ.ˋ(this.EH), this.ED);
    this.EF = false;
    this.mState = 2;
  }
  
  public boolean Ἶ()
  {
    return this.EE.isEmpty();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬¥.Ë
 * JD-Core Version:    0.7.0.1
 */