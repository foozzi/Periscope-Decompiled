package o;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.io.OutputStream;

public class ﾍ
  implements ﭥ<ﾌ>
{
  private String id;
  private final ﭥ<InputStream> jH;
  private final ﭥ<ParcelFileDescriptor> jI;
  
  public ﾍ(ﭥ<InputStream> paramﭥ, ﭥ<ParcelFileDescriptor> paramﭥ1)
  {
    this.jH = paramﭥ;
    this.jI = paramﭥ1;
  }
  
  public String getId()
  {
    if (this.id == null) {
      this.id = (this.jH.getId() + this.jI.getId());
    }
    return this.id;
  }
  
  public boolean ˊ(ﾌ paramﾌ, OutputStream paramOutputStream)
  {
    if (paramﾌ.冫() != null) {
      return this.jH.ˊ(paramﾌ.冫(), paramOutputStream);
    }
    return this.jI.ˊ(paramﾌ.לּ(), paramOutputStream);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¾
 * JD-Core Version:    0.7.0.1
 */