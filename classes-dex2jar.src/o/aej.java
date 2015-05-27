package o;

import android.content.Context;
import android.content.res.Resources;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class aej
  implements zz<aeh>
{
  private aeh.aux bAA;
  private zz.if bAB;
  private final List<aeh> bAy;
  private final boolean bAz;
  private final aad bnA;
  private final zp bnB;
  private final String bwV;
  private final ady bzc;
  private final Context mContext;
  
  public aej(Context paramContext, aad paramaad, zp paramzp, ady paramady, String paramString)
  {
    this.mContext = paramContext;
    this.bnB = paramzp;
    this.bzc = paramady;
    this.bnA = paramaad;
    this.bwV = paramString;
    this.bAy = new ArrayList();
    this.bAz = abb.ﾟ(paramContext);
  }
  
  private Set<String> xM()
  {
    return this.bnA.一(this.bwV);
  }
  
  private Set<String> xN()
  {
    return this.bnA.גּ(this.bwV);
  }
  
  private anf ゝ(String paramString)
  {
    return this.bnB.ゝ(paramString);
  }
  
  public String id()
  {
    return "viewer_provider";
  }
  
  public aad tI()
  {
    return this.bnA;
  }
  
  public int vc()
  {
    return this.bAy.size();
  }
  
  public xh xK()
  {
    return this.bnB.ị(this.bwV);
  }
  
  public void xL()
  {
    this.bAy.clear();
    Object localObject2 = xK();
    if (localObject2 == null) {
      return;
    }
    if (this.bAA != null) {
      this.bAy.add(0, this.bAA);
    }
    if ((((xh)localObject2).boL) && (this.bAz) && (aba.ˋ(((xh)localObject2).boO, ((xh)localObject2).boP))) {
      this.bAy.add(new aeh.ˎ(((xh)localObject2).boO, ((xh)localObject2).boP));
    }
    this.bAy.add(new aeh.ˊ(this));
    if (((xh)localObject2).nD.equals(this.bnA.vx()))
    {
      localObject1 = new ArrayList();
      if (((xh)localObject2).ﮈ())
      {
        if (this.bAA != null) {
          ((List)localObject1).add(new agb(this.bwV, this.bzc));
        }
        if (((xh)localObject2).boT) {
          ((List)localObject1).add(new afz(this.bwV, this.bzc));
        }
        ((List)localObject1).add(new afw(this.bwV, this.bzc));
      }
      ((List)localObject1).add(new afy(this.bwV, this.bzc));
      this.bAy.add(new aeh.if((List)localObject1));
    }
    else
    {
      localObject1 = new ArrayList();
      if ((!((xh)localObject2).boG) && (((xh)localObject2).uh())) {
        ((List)localObject1).add(new agc(this.bwV, this.bzc));
      }
      ((List)localObject1).add(new afy(this.bwV, this.bzc));
      ((List)localObject1).add(new aga(this.bwV, this.bzc));
      this.bAy.add(new aeh.if((List)localObject1));
    }
    Object localObject3 = xN();
    Object localObject1 = xM();
    Resources localResources = this.mContext.getResources();
    if (((localObject3 == null) || (((Set)localObject3).isEmpty())) && ((localObject1 == null) || (((Set)localObject1).isEmpty())))
    {
      this.bAy.add(new aeh.ˋ(localResources.getString(2131099814)));
      return;
    }
    anf localanf = ゝ(((xh)localObject2).id);
    int i;
    if ((localObject3 != null) && (!((Set)localObject3).isEmpty()))
    {
      if (localanf == null) {
        i = 0;
      } else {
        i = localanf.BR();
      }
      this.bAy.add(new aeh.ˋ(localResources.getQuantityString(2131558403, i, new Object[] { akn.ˊ(localResources, i, true) })));
      i = 0;
      localObject2 = ((Set)localObject3).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        this.bAy.add(new aeh.ʼ(this, this.bwV, str, true));
        i += 1;
        if (i >= 15) {
          break;
        }
      }
      if ((((Set)localObject3).size() > 15) && (localanf != null)) {
        this.bAy.add(new aeh.ˏ(localanf, aeh.ˏ.if.bAj, 15));
      }
    }
    else if ((!((xh)localObject2).uh()) && (((xh)localObject2).boT))
    {
      this.bAy.add(new aeh.ˋ(localResources.getString(2131099813)));
    }
    if ((localObject1 != null) && (!((Set)localObject1).isEmpty()))
    {
      if (localanf == null) {
        i = 0;
      } else {
        i = localanf.BS() + localanf.BQ();
      }
      this.bAy.add(new aeh.ˋ(localResources.getQuantityString(2131558402, i, new Object[] { akn.ˊ(localResources, i, true) })));
      i = 0;
      localObject2 = ((Set)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (String)((Iterator)localObject2).next();
        this.bAy.add(new aeh.ʼ(this, this.bwV, (String)localObject3, false));
        i += 1;
        if (i >= 15) {
          break;
        }
      }
      if ((((Set)localObject1).size() > 15) && (localanf != null)) {
        this.bAy.add(new aeh.ˏ(localanf, aeh.ˏ.if.bAi, 15));
      }
    }
  }
  
  public aeh ǰ(int paramInt)
  {
    return (aeh)this.bAy.get(paramInt);
  }
  
  public void ˊ(aal paramaal)
  {
    int i = 0;
    Iterator localIterator = this.bAy.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (aeh)localIterator.next();
      if ((localObject instanceof aeh.ʼ))
      {
        localObject = (aeh.ʼ)localObject;
        if ((paramaal.nD.equals(((aeh.ʼ)localObject).nD)) && (paramaal.bug == ((aeh.ʼ)localObject).bug))
        {
          this.bAB.יּ(i, 1);
          return;
        }
      }
      i += 1;
    }
  }
  
  public void ˊ(zz.if paramif)
  {
    this.bAB = paramif;
  }
  
  public void ˋ(aeh.aux paramaux)
  {
    this.bAA = paramaux;
    if ((!this.bAy.isEmpty()) && ((this.bAy.get(0) instanceof aeh.aux))) {
      this.bAy.remove(0);
    }
    this.bAy.add(0, paramaux);
    if (this.bAB != null) {
      this.bAB.ᐟ(0, 1);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aej
 * JD-Core Version:    0.7.0.1
 */