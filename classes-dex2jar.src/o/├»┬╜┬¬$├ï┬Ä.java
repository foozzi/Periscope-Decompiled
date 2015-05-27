package o;

import java.security.MessageDigest;
import java.util.UUID;

class ｪ$ˎ
  implements ﮆ
{
  private final UUID uuid;
  
  public ｪ$ˎ()
  {
    this(UUID.randomUUID());
  }
  
  ｪ$ˎ(UUID paramUUID)
  {
    this.uuid = paramUUID;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ˎ)) {
      return ((ˎ)paramObject).uuid.equals(this.uuid);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.uuid.hashCode();
  }
  
  public void ˊ(MessageDigest paramMessageDigest)
  {
    throw new UnsupportedOperationException("Not implemented");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½ª.Ë
 * JD-Core Version:    0.7.0.1
 */