package o;

import android.content.ComponentName;
import android.content.Intent;

final class ﬥ$if
{
  private final String EB;
  private final ComponentName EC;
  
  public ﬥ$if(String paramString)
  {
    this.EB = ﺧ.ᐡ(paramString);
    this.EC = null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof if)) {
      return false;
    }
    paramObject = (if)paramObject;
    return (ﺟ.equal(this.EB, paramObject.EB)) && (ﺟ.equal(this.EC, paramObject.EC));
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { this.EB, this.EC });
  }
  
  public String toString()
  {
    if (this.EB == null) {
      return this.EC.flattenToString();
    }
    return this.EB;
  }
  
  public Intent ỵ()
  {
    if (this.EB != null) {
      return new Intent(this.EB).setPackage("com.google.android.gms");
    }
    return new Intent().setComponent(this.EC);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬¥.if
 * JD-Core Version:    0.7.0.1
 */