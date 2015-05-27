package o;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;

public class ｲ<A>
  implements ɽ<A, ﾌ>
{
  private final ɽ<A, InputStream> jB;
  private final ɽ<A, ParcelFileDescriptor> jC;
  
  public ｲ(ɽ<A, InputStream> paramɽ, ɽ<A, ParcelFileDescriptor> paramɽ1)
  {
    if ((paramɽ == null) && (paramɽ1 == null)) {
      throw new NullPointerException("At least one of streamLoader and fileDescriptorLoader must be non null");
    }
    this.jB = paramɽ;
    this.jC = paramɽ1;
  }
  
  public Į<ﾌ> ˎ(A paramA, int paramInt1, int paramInt2)
  {
    Į localĮ1 = null;
    if (this.jB != null) {
      localĮ1 = this.jB.ˎ(paramA, paramInt1, paramInt2);
    }
    Į localĮ2 = null;
    if (this.jC != null) {
      localĮ2 = this.jC.ˎ(paramA, paramInt1, paramInt2);
    }
    if ((localĮ1 != null) || (localĮ2 != null)) {
      return new ｲ.if(localĮ1, localĮ2);
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½²
 * JD-Core Version:    0.7.0.1
 */