package o;

import java.util.UUID;

final class jf
  extends gk<UUID>
{
  public UUID ʹ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return UUID.fromString(paramjz.nextString());
  }
  
  public void ˊ(kc paramkc, UUID paramUUID)
  {
    if (paramUUID == null) {
      paramUUID = null;
    } else {
      paramUUID = paramUUID.toString();
    }
    paramkc.ᖮ(paramUUID);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jf
 * JD-Core Version:    0.7.0.1
 */