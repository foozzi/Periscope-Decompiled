package o;

import java.io.InputStream;

public class ږ
  implements ɽ<ﻣ, InputStream>
{
  private final ċ<ﻣ, ﻣ> jP;
  
  public ږ()
  {
    this(null);
  }
  
  public ږ(ċ<ﻣ, ﻣ> paramċ)
  {
    this.jP = paramċ;
  }
  
  public Į<InputStream> ˊ(ﻣ paramﻣ, int paramInt1, int paramInt2)
  {
    Object localObject = paramﻣ;
    if (this.jP != null)
    {
      ﻣ localﻣ = (ﻣ)this.jP.ˏ(paramﻣ, 0, 0);
      localObject = localﻣ;
      if (localﻣ == null)
      {
        this.jP.ˊ(paramﻣ, 0, 0, paramﻣ);
        localObject = paramﻣ;
      }
    }
    return new ɭ((ﻣ)localObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú
 * JD-Core Version:    0.7.0.1
 */