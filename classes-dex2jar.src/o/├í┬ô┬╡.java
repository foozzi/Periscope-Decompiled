package o;

import android.content.Context;
import android.os.Build.VERSION;
import java.util.concurrent.ExecutorService;

public class ᓵ
{
  private final Context dV;
  private ʷ eC;
  private ი eD;
  private ṟ eE;
  private ﭝ eF;
  private ExecutorService eP;
  private ExecutorService eQ;
  private ᓳ.if eR;
  
  public ᓵ(Context paramContext)
  {
    this.dV = paramContext.getApplicationContext();
  }
  
  ᓲ ᓳ()
  {
    if (this.eP == null) {
      this.eP = new ΐ(Math.max(1, Runtime.getRuntime().availableProcessors()));
    }
    if (this.eQ == null) {
      this.eQ = new ΐ(1);
    }
    ẛ localẛ = new ẛ(this.dV);
    if (this.eD == null) {
      if (Build.VERSION.SDK_INT >= 11) {
        this.eD = new ᒣ(localẛ.ẍ());
      } else {
        this.eD = new Ꮀ();
      }
    }
    if (this.eE == null) {
      this.eE = new ḻ(localẛ.ẋ());
    }
    if (this.eR == null) {
      this.eR = new ᵠ(this.dV);
    }
    if (this.eC == null) {
      this.eC = new ʷ(this.eE, this.eR, this.eQ, this.eP);
    }
    if (this.eF == null) {
      this.eF = ﭝ.gS;
    }
    return new ᓲ(this.eC, this.eE, this.eD, this.dV, this.eF);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */