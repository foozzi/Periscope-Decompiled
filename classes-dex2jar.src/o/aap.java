package o;

import android.content.Context;
import android.os.Handler;
import android.widget.TextView;
import java.io.IOException;

public class aap
  implements aaq.aux, ट.ˊ<ゞ>
{
  private final String As;
  private final TextView bul;
  private aaq bum;
  private aaq.ᐝ bun;
  private final Context dV;
  private final String url;
  private final ۂ xR;
  
  public aap(Context paramContext, String paramString1, String paramString2, TextView paramTextView, ۂ paramۂ)
  {
    this.dV = paramContext;
    this.As = paramString1;
    this.url = paramString2;
    this.bul = paramTextView;
    this.xR = paramۂ;
  }
  
  public void ˊ(aaq paramaaq, aaq.ᐝ paramᐝ)
  {
    this.bum = paramaaq;
    this.bun = paramᐝ;
    paramᐝ = new イ();
    new ट(this.url, new ԏ(this.dV, null, this.As, true), paramᐝ).ˊ(paramaaq.vD().getLooper(), this);
  }
  
  public void ˊ(ゞ paramゞ)
  {
    Object localObject2 = this.bum.vD();
    Object localObject3 = new ӧ();
    Object localObject1 = null;
    if ((paramゞ instanceof ἷ))
    {
      localObject1 = (ἷ)paramゞ;
      try
      {
        localObject1 = კ.ˊ(this.dV, ((ἷ)localObject1).xK, null, false);
      }
      catch (ԁ.ˊ paramゞ)
      {
        this.bun.ʼ(paramゞ);
        return;
      }
    }
    忄 local忄 = new 忄(new Ỵ(new ԏ(this.dV, (ף)localObject3, this.As, true), this.url, paramゞ, (ʭ)localObject3, (int[])localObject1, 1, this.xR), true, 3, 18874368, 40000L, (Handler)localObject2, this.bum, 0);
    paramゞ = new ԅ(local忄, 1, 5000L, (Handler)localObject2, this.bum, 50);
    localObject1 = new з(local忄);
    localObject3 = new ﾏ(local忄, new ｮ(), this.bum.vE(), ((Handler)localObject2).getLooper());
    localObject2 = new Ƴ(local忄, this.bum, ((Handler)localObject2).getLooper());
    this.bun.ˊ(null, null, new ڹ[] { paramゞ, localObject1, localObject2, localObject3, null });
  }
  
  public void ˏ(IOException paramIOException)
  {
    this.bun.ʼ(paramIOException);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aap
 * JD-Core Version:    0.7.0.1
 */