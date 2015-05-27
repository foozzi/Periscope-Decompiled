package o;

import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class hg
  implements gl, Cloneable
{
  public static final hg KP = new hg();
  private double KQ = -1.0D;
  private int KR = 136;
  private boolean KS = true;
  private boolean KT;
  private List<fc> KU = Collections.emptyList();
  private List<fc> KV = Collections.emptyList();
  
  private boolean ʼ(Class<?> paramClass)
  {
    return (!Enum.class.isAssignableFrom(paramClass)) && ((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()));
  }
  
  private boolean ʽ(Class<?> paramClass)
  {
    return (paramClass.isMemberClass()) && (!ͺ(paramClass));
  }
  
  private boolean ˊ(gp paramgp)
  {
    return (paramgp == null) || (paramgp.B() <= this.KQ);
  }
  
  private boolean ˊ(gp paramgp, gq paramgq)
  {
    return (ˊ(paramgp)) && (ˊ(paramgq));
  }
  
  private boolean ˊ(gq paramgq)
  {
    return (paramgq == null) || (paramgq.B() > this.KQ);
  }
  
  private boolean ͺ(Class<?> paramClass)
  {
    return (paramClass.getModifiers() & 0x8) != 0;
  }
  
  protected hg D()
  {
    try
    {
      hg localhg = (hg)super.clone();
      return localhg;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    Class localClass = paramjy.U();
    boolean bool1 = ˊ(localClass, true);
    boolean bool2 = ˊ(localClass, false);
    if ((!bool1) && (!bool2)) {
      return null;
    }
    return new hh(this, bool2, bool1, paramfl, paramjy);
  }
  
  public boolean ˊ(Class<?> paramClass, boolean paramBoolean)
  {
    if ((this.KQ != -1.0D) && (!ˊ((gp)paramClass.getAnnotation(gp.class), (gq)paramClass.getAnnotation(gq.class)))) {
      return true;
    }
    if ((!this.KS) && (ʽ(paramClass))) {
      return true;
    }
    if (ʼ(paramClass)) {
      return true;
    }
    if (paramBoolean) {
      localObject = this.KU;
    } else {
      localObject = this.KV;
    }
    Object localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      if (((fc)((Iterator)localObject).next()).ˏ(paramClass)) {
        return true;
      }
    }
    return false;
  }
  
  public boolean ˊ(Field paramField, boolean paramBoolean)
  {
    if ((this.KR & paramField.getModifiers()) != 0) {
      return true;
    }
    if ((this.KQ != -1.0D) && (!ˊ((gp)paramField.getAnnotation(gp.class), (gq)paramField.getAnnotation(gq.class)))) {
      return true;
    }
    if (paramField.isSynthetic()) {
      return true;
    }
    Object localObject;
    if (this.KT)
    {
      localObject = (gm)paramField.getAnnotation(gm.class);
      if ((localObject == null) || (paramBoolean ? !((gm)localObject).z() : !((gm)localObject).A())) {
        return true;
      }
    }
    if ((!this.KS) && (ʽ(paramField.getType()))) {
      return true;
    }
    if (ʼ(paramField.getType())) {
      return true;
    }
    if (paramBoolean) {
      localObject = this.KU;
    } else {
      localObject = this.KV;
    }
    if (!((List)localObject).isEmpty())
    {
      paramField = new fd(paramField);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (((fc)((Iterator)localObject).next()).ˊ(paramField)) {
          return true;
        }
      }
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hg
 * JD-Core Version:    0.7.0.1
 */