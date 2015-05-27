package o;

import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class any
  implements CookieStore
{
  private final Map<URI, List<HttpCookie>> map = new HashMap();
  
  private URI ˊ(URI paramURI)
  {
    if (paramURI == null) {
      return null;
    }
    try
    {
      URI localURI = new URI("http", paramURI.getHost(), null, null);
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException) {}
    return paramURI;
  }
  
  public void add(URI paramURI, HttpCookie paramHttpCookie)
  {
    if (paramHttpCookie == null) {}
    try
    {
      throw new NullPointerException("cookie == null");
    }
    finally {}
    URI localURI = ˊ(paramURI);
    paramURI = (List)this.map.get(localURI);
    if (paramURI == null)
    {
      paramURI = new ArrayList();
      this.map.put(localURI, paramURI);
    }
    else
    {
      paramURI.remove(paramHttpCookie);
    }
    paramURI.add(paramHttpCookie);
  }
  
  public List<HttpCookie> get(URI paramURI)
  {
    if (paramURI == null) {}
    try
    {
      throw new NullPointerException("uri == null");
    }
    finally {}
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = (List)this.map.get(paramURI);
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = ((List)localObject1).iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (HttpCookie)((Iterator)localObject1).next();
        if (((HttpCookie)localObject2).hasExpired())
        {
          ((Iterator)localObject1).remove();
          break label262;
        }
        localArrayList.add(localObject2);
        break label262;
      }
    }
    localObject1 = this.map.entrySet().iterator();
    label262:
    label265:
    label268:
    for (;;)
    {
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (!paramURI.equals(((Map.Entry)localObject2).getKey())) {
          localObject2 = ((List)((Map.Entry)localObject2).getValue()).iterator();
        }
      }
      else
      {
        for (;;)
        {
          if (!((Iterator)localObject2).hasNext()) {
            break label268;
          }
          HttpCookie localHttpCookie = (HttpCookie)((Iterator)localObject2).next();
          if (HttpCookie.domainMatches(anx.ˊ(localHttpCookie), paramURI.getHost())) {
            if (localHttpCookie.hasExpired())
            {
              ((Iterator)localObject2).remove();
            }
            else if (!localArrayList.contains(localHttpCookie))
            {
              localArrayList.add(localHttpCookie);
              break label265;
              paramURI = Collections.unmodifiableList(localArrayList);
              return paramURI;
              break;
            }
          }
        }
      }
    }
  }
  
  public List<HttpCookie> getCookies()
  {
    label126:
    for (;;)
    {
      try
      {
        Object localObject1 = new ArrayList();
        Iterator localIterator1 = this.map.values().iterator();
        if (localIterator1.hasNext())
        {
          Iterator localIterator2 = ((List)localIterator1.next()).iterator();
          if (!localIterator2.hasNext()) {
            break label126;
          }
          HttpCookie localHttpCookie = (HttpCookie)localIterator2.next();
          if (localHttpCookie.hasExpired()) {
            localIterator2.remove();
          } else if (!((List)localObject1).contains(localHttpCookie)) {
            ((List)localObject1).add(localHttpCookie);
          }
        }
        else
        {
          localObject1 = Collections.unmodifiableList((List)localObject1);
          return localObject1;
        }
      }
      finally {}
    }
  }
  
  public List<URI> getURIs()
  {
    try
    {
      Object localObject1 = new ArrayList(this.map.keySet());
      ((List)localObject1).remove(null);
      localObject1 = Collections.unmodifiableList((List)localObject1);
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }
  
  public boolean remove(URI paramURI, HttpCookie paramHttpCookie)
  {
    if (paramHttpCookie == null) {}
    try
    {
      throw new NullPointerException("cookie == null");
    }
    finally {}
    paramURI = (List)this.map.get(ˊ(paramURI));
    if (paramURI != null)
    {
      bool = paramURI.remove(paramHttpCookie);
      if (bool)
      {
        bool = true;
        break label57;
      }
    }
    boolean bool = false;
    label57:
    return bool;
  }
  
  public boolean removeAll()
  {
    for (;;)
    {
      try
      {
        if (!this.map.isEmpty())
        {
          bool = true;
          this.map.clear();
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.any
 * JD-Core Version:    0.7.0.1
 */