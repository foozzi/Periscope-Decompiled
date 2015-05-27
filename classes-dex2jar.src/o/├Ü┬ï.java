package o;

import java.nio.ByteBuffer;

public final class ڋ
{
  public int flags;
  public ByteBuffer ko;
  public final ɜ sI = new ɜ();
  public long sJ;
  private final int sK;
  public int size;
  
  public ڋ(int paramInt)
  {
    this.sK = paramInt;
  }
  
  public boolean ʶ(int paramInt)
  {
    switch (this.sK)
    {
    default: 
      break;
    case 1: 
      this.ko = ByteBuffer.allocate(paramInt);
      return true;
    case 2: 
      this.ko = ByteBuffer.allocateDirect(paramInt);
      return true;
    }
    return false;
  }
  
  public boolean ւ()
  {
    return (this.flags & 0x2) != 0;
  }
  
  public boolean ח()
  {
    return (this.flags & 0x8000000) != 0;
  }
  
  public boolean צ()
  {
    return (this.flags & 0x1) != 0;
  }
  
  public void ب()
  {
    if (this.ko != null) {
      this.ko.clear();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú
 * JD-Core Version:    0.7.0.1
 */