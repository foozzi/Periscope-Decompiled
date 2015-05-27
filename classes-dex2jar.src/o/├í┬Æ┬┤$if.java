package o;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ᒴ$if
{
  private Account Cc;
  private final Set<String> Cd = new HashSet();
  private int Ce;
  private View Cf;
  private String Cg;
  private String Ch;
  private final Map<ᒰ<?>, ᒰ.if> Ci = new HashMap();
  private final Map<ᒰ<?>, Boolean> Cj = new HashMap();
  private ι Ck;
  private int Cl = -1;
  private ᒴ.ˋ Cm;
  private Looper Cn;
  private ᒰ.ˋ<? extends ah, ai> Co;
  private final Set<ᒴ.ˊ> Cp = new HashSet();
  private final Set<ᒴ.ˋ> Cq = new HashSet();
  private ai.if Cr = new ai.if();
  private final Context mContext;
  
  public ᒴ$if(Context paramContext)
  {
    this.mContext = paramContext;
    this.Cn = paramContext.getMainLooper();
    this.Cg = paramContext.getPackageName();
    this.Ch = paramContext.getClass().getName();
    this.Co = ae.GI;
  }
  
  private ᒴ দ()
  {
    ᴝ localᴝ = ᴝ.ˎ(this.Ck);
    ᒴ localᒴ = localᴝ.ᒼ(this.Cl);
    Object localObject = localᒴ;
    if (localᒴ == null) {
      localObject = new ᖨ(this.mContext.getApplicationContext(), this.Cn, ও(), this.Co, this.Ci, this.Cj, this.Cp, this.Cq, this.Cl);
    }
    localᴝ.ˊ(this.Cl, (ᒴ)localObject, this.Cm);
    return localObject;
  }
  
  public if ˊ(ᒰ<? extends ᒰ.if.ˋ> paramᒰ)
  {
    this.Ci.put(paramᒰ, null);
    paramᒰ = paramᒰ.ܐ();
    int i = 0;
    int j = paramᒰ.size();
    while (i < j)
    {
      this.Cd.add(((Scope)paramᒰ.get(i)).ৰ());
      i += 1;
    }
    return this;
  }
  
  public if ˎ(ᒴ.ˊ paramˊ)
  {
    this.Cp.add(paramˊ);
    return this;
  }
  
  public if ˎ(ᒴ.ˋ paramˋ)
  {
    this.Cq.add(paramˋ);
    return this;
  }
  
  public ぃ ও()
  {
    return new ぃ(this.Cc, this.Cd, this.Ce, this.Cf, this.Cg, this.Ch, this.Cr.Ť());
  }
  
  public ᒴ চ()
  {
    boolean bool;
    if (!this.Ci.isEmpty()) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˏ(bool, "must call addApi() to add at least one API");
    if (this.Cl >= 0) {
      return দ();
    }
    return new ᖨ(this.mContext, this.Cn, ও(), this.Co, this.Ci, this.Cj, this.Cp, this.Cq, -1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.if
 * JD-Core Version:    0.7.0.1
 */