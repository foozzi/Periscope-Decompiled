package o;

import android.content.Context;
import android.net.Uri;
import android.widget.TextView;

public class aao
  implements aaq.aux
{
  private final String As;
  private final TextView bul;
  private final Context dV;
  private final ᒎ ub;
  private final Uri uri;
  
  public aao(Context paramContext, String paramString, Uri paramUri, TextView paramTextView, ᒎ paramᒎ)
  {
    this.dV = paramContext;
    this.As = paramString;
    this.uri = paramUri;
    this.bul = paramTextView;
    this.ub = paramᒎ;
  }
  
  public void ˊ(aaq paramaaq, aaq.ᐝ paramᐝ)
  {
    Object localObject1 = new ԏ(this.dV, null, this.As, true);
    Object localObject2 = new ᒭ(this.uri, (ϒ)localObject1, this.ub, 2, 10485760);
    localObject1 = new ԅ((ڒ)localObject2, null, true, 1, 5000L, null, paramaaq.vD(), paramaaq, 50);
    paramaaq = new з((ڒ)localObject2, null, true, paramaaq.vD(), paramaaq);
    localObject2 = new ڹ[5];
    localObject2[0] = localObject1;
    localObject2[1] = paramaaq;
    localObject2[4] = null;
    paramᐝ.ˊ(null, null, (ڹ[])localObject2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aao
 * JD-Core Version:    0.7.0.1
 */