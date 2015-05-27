package o;

import java.net.URL;

final class jb
  extends gk<URL>
{
  public void ˊ(kc paramkc, URL paramURL)
  {
    if (paramURL == null) {
      paramURL = null;
    } else {
      paramURL = paramURL.toExternalForm();
    }
    paramkc.ᖮ(paramURL);
  }
  
  public URL ᐧ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    paramjz = paramjz.nextString();
    if ("null".equals(paramjz)) {
      return null;
    }
    return new URL(paramjz);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jb
 * JD-Core Version:    0.7.0.1
 */