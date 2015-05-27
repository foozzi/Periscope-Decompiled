package o;

import java.net.URI;
import java.net.URISyntaxException;

final class jc
  extends gk<URI>
{
  public void ˊ(kc paramkc, URI paramURI)
  {
    if (paramURI == null) {
      paramURI = null;
    } else {
      paramURI = paramURI.toASCIIString();
    }
    paramkc.ᖮ(paramURI);
  }
  
  public URI ᐨ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    try
    {
      paramjz = paramjz.nextString();
      if ("null".equals(paramjz)) {
        return null;
      }
      paramjz = new URI(paramjz);
      return paramjz;
    }
    catch (URISyntaxException paramjz)
    {
      throw new fx(paramjz);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jc
 * JD-Core Version:    0.7.0.1
 */