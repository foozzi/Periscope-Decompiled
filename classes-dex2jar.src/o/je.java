package o;

import java.net.InetAddress;

final class je
  extends gk<InetAddress>
{
  public void ˊ(kc paramkc, InetAddress paramInetAddress)
  {
    if (paramInetAddress == null) {
      paramInetAddress = null;
    } else {
      paramInetAddress = paramInetAddress.getHostAddress();
    }
    paramkc.ᖮ(paramInetAddress);
  }
  
  public InetAddress ﾞ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return InetAddress.getByName(paramjz.nextString());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.je
 * JD-Core Version:    0.7.0.1
 */