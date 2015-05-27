package o;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class fl
{
  private final ThreadLocal<Map<jy<?>, if<?>>> JW = new ThreadLocal();
  private final Map<jy<?>, gk<?>> JX = Collections.synchronizedMap(new HashMap());
  private final List<gl> JY;
  private final gt JZ;
  private final boolean Ka;
  private final boolean Kb;
  private final boolean Kc;
  private final boolean Kd;
  final fu Ke = new fm(this);
  final gd Kf = new fn(this);
  
  public fl()
  {
    this(hg.KP, fe.JQ, Collections.emptyMap(), false, false, false, true, false, false, gg.Ky, Collections.emptyList());
  }
  
  fl(hg paramhg, fk paramfk, Map<Type, fs<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, gg paramgg, List<gl> paramList)
  {
    this.JZ = new gt(paramMap);
    this.Ka = paramBoolean1;
    this.Kc = paramBoolean3;
    this.Kb = paramBoolean4;
    this.Kd = paramBoolean5;
    paramMap = new ArrayList();
    paramMap.add(ir.MS);
    paramMap.add(ii.LA);
    paramMap.add(paramhg);
    paramMap.addAll(paramList);
    paramMap.add(ir.Mz);
    paramMap.add(ir.Mo);
    paramMap.add(ir.Mi);
    paramMap.add(ir.Mk);
    paramMap.add(ir.Mm);
    paramMap.add(ir.ˊ(Long.TYPE, Long.class, ˊ(paramgg)));
    paramMap.add(ir.ˊ(Double.TYPE, Double.class, ʸ(paramBoolean6)));
    paramMap.add(ir.ˊ(Float.TYPE, Float.class, ˀ(paramBoolean6)));
    paramMap.add(ir.Mt);
    paramMap.add(ir.Mv);
    paramMap.add(ir.MB);
    paramMap.add(ir.MD);
    paramMap.add(ir.ˊ(BigDecimal.class, ir.Mx));
    paramMap.add(ir.ˊ(BigInteger.class, ir.My));
    paramMap.add(ir.MF);
    paramMap.add(ir.MH);
    paramMap.add(ir.ML);
    paramMap.add(ir.MQ);
    paramMap.add(ir.MJ);
    paramMap.add(ir.Mf);
    paramMap.add(hz.LA);
    paramMap.add(ir.MO);
    paramMap.add(io.LA);
    paramMap.add(im.LA);
    paramMap.add(ir.MM);
    paramMap.add(hw.LA);
    paramMap.add(ir.Md);
    paramMap.add(new hy(this.JZ));
    paramMap.add(new ih(this.JZ, paramBoolean2));
    paramMap.add(new ib(this.JZ));
    paramMap.add(ir.MT);
    paramMap.add(new ik(this.JZ, paramfk, paramhg));
    this.JY = Collections.unmodifiableList(paramMap);
  }
  
  private gk<Number> ʸ(boolean paramBoolean)
  {
    if (paramBoolean) {
      return ir.Mr;
    }
    return new fo(this);
  }
  
  private gk<Number> ˀ(boolean paramBoolean)
  {
    if (paramBoolean) {
      return ir.Mq;
    }
    return new fp(this);
  }
  
  private gk<Number> ˊ(gg paramgg)
  {
    if (paramgg == gg.Ky) {
      return ir.Mp;
    }
    return new fq(this);
  }
  
  private kc ˊ(Writer paramWriter)
  {
    if (this.Kc) {
      paramWriter.write(")]}'\n");
    }
    paramWriter = new kc(paramWriter);
    if (this.Kd) {
      paramWriter.setIndent("  ");
    }
    paramWriter.ι(this.Ka);
    return paramWriter;
  }
  
  private static void ˊ(Object paramObject, jz paramjz)
  {
    if (paramObject != null) {}
    try
    {
      if (paramjz.J() != kb.NC) {
        throw new fx("JSON document was not fully consumed.");
      }
      return;
    }
    catch (kd paramObject)
    {
      throw new gf(paramObject);
    }
    catch (IOException paramObject)
    {
      throw new fx(paramObject);
    }
  }
  
  private void ˎ(double paramDouble)
  {
    if ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble))) {
      throw new IllegalArgumentException(paramDouble + " is not a valid double value as per JSON specification. To override this" + " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }
  }
  
  public String toString()
  {
    return "{serializeNulls:" + this.Ka + "factories:" + this.JY + ",instanceCreators:" + this.JZ + "}";
  }
  
  public <T> T ˊ(Reader paramReader, Type paramType)
  {
    paramReader = new jz(paramReader);
    paramType = ˊ(paramReader, paramType);
    ˊ(paramType, paramReader);
    return paramType;
  }
  
  public <T> T ˊ(String paramString, Class<T> paramClass)
  {
    paramString = ˊ(paramString, paramClass);
    return hp.ι(paramClass).cast(paramString);
  }
  
  public <T> T ˊ(String paramString, Type paramType)
  {
    if (paramString == null) {
      return null;
    }
    return ˊ(new StringReader(paramString), paramType);
  }
  
  public <T> T ˊ(fw paramfw, Class<T> paramClass)
  {
    paramfw = ˊ(paramfw, paramClass);
    return hp.ι(paramClass).cast(paramfw);
  }
  
  public <T> T ˊ(fw paramfw, Type paramType)
  {
    if (paramfw == null) {
      return null;
    }
    return ˊ(new ic(paramfw), paramType);
  }
  
  public <T> T ˊ(jz paramjz, Type paramType)
  {
    int i = 1;
    boolean bool = paramjz.isLenient();
    paramjz.setLenient(true);
    try
    {
      paramjz.J();
      i = 0;
      paramType = ˊ(jy.ʽ(paramType)).ˋ(paramjz);
      return paramType;
    }
    catch (EOFException paramType)
    {
      if (i != 0) {
        return null;
      }
      throw new gf(paramType);
    }
    catch (IllegalStateException paramType)
    {
      throw new gf(paramType);
    }
    catch (IOException paramType)
    {
      throw new gf(paramType);
    }
    finally
    {
      paramjz.setLenient(bool);
    }
  }
  
  public fw ˊ(Object paramObject, Type paramType)
  {
    ie localie = new ie();
    ˊ(paramObject, paramType, localie);
    return localie.N();
  }
  
  public <T> gk<T> ˊ(gl paramgl, jy<T> paramjy)
  {
    int i = 0;
    if (!this.JY.contains(paramgl)) {
      i = 1;
    }
    Iterator localIterator = this.JY.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (gl)localIterator.next();
      if (i == 0)
      {
        if (localObject == paramgl) {
          i = 1;
        }
      }
      else
      {
        localObject = ((gl)localObject).ˊ(this, paramjy);
        if (localObject != null) {
          return localObject;
        }
      }
    }
    throw new IllegalArgumentException("GSON cannot serialize " + paramjy);
  }
  
  public <T> gk<T> ˊ(jy<T> paramjy)
  {
    Object localObject1 = (gk)this.JX.get(paramjy);
    if (localObject1 != null) {
      return localObject1;
    }
    Object localObject2 = (Map)this.JW.get();
    int i = 0;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new HashMap();
      this.JW.set(localObject1);
      i = 1;
    }
    localObject2 = (if)((Map)localObject1).get(paramjy);
    if (localObject2 != null) {
      return localObject2;
    }
    try
    {
      localObject2 = new if();
      ((Map)localObject1).put(paramjy, localObject2);
      Iterator localIterator = this.JY.iterator();
      while (localIterator.hasNext())
      {
        gk localgk = ((gl)localIterator.next()).ˊ(this, paramjy);
        if (localgk != null)
        {
          ((if)localObject2).ˊ(localgk);
          this.JX.put(paramjy, localgk);
          return localgk;
        }
      }
      throw new IllegalArgumentException("GSON cannot handle " + paramjy);
    }
    finally
    {
      ((Map)localObject1).remove(paramjy);
      if (i != 0) {
        this.JW.remove();
      }
    }
  }
  
  public void ˊ(Object paramObject, Type paramType, Appendable paramAppendable)
  {
    try
    {
      ˊ(paramObject, paramType, ˊ(hq.ˊ(paramAppendable)));
      return;
    }
    catch (IOException paramObject)
    {
      throw new fx(paramObject);
    }
  }
  
  public void ˊ(Object paramObject, Type paramType, kc paramkc)
  {
    paramType = ˊ(jy.ʽ(paramType));
    boolean bool1 = paramkc.isLenient();
    paramkc.setLenient(true);
    boolean bool2 = paramkc.af();
    paramkc.ˤ(this.Kb);
    boolean bool3 = paramkc.ag();
    paramkc.ι(this.Ka);
    try
    {
      paramType.ˊ(paramkc, paramObject);
      return;
    }
    catch (IOException paramObject)
    {
      throw new fx(paramObject);
    }
    finally
    {
      paramkc.setLenient(bool1);
      paramkc.ˤ(bool2);
      paramkc.ι(bool3);
    }
  }
  
  public void ˊ(fw paramfw, Appendable paramAppendable)
  {
    try
    {
      ˊ(paramfw, ˊ(hq.ˊ(paramAppendable)));
      return;
    }
    catch (IOException paramfw)
    {
      throw new RuntimeException(paramfw);
    }
  }
  
  public void ˊ(fw paramfw, kc paramkc)
  {
    boolean bool1 = paramkc.isLenient();
    paramkc.setLenient(true);
    boolean bool2 = paramkc.af();
    paramkc.ˤ(this.Kb);
    boolean bool3 = paramkc.ag();
    paramkc.ι(this.Ka);
    try
    {
      hq.ˋ(paramfw, paramkc);
      return;
    }
    catch (IOException paramfw)
    {
      throw new fx(paramfw);
    }
    finally
    {
      paramkc.setLenient(bool1);
      paramkc.ˤ(bool2);
      paramkc.ι(bool3);
    }
  }
  
  public String ˋ(Object paramObject, Type paramType)
  {
    StringWriter localStringWriter = new StringWriter();
    ˊ(paramObject, paramType, localStringWriter);
    return localStringWriter.toString();
  }
  
  public String ˋ(fw paramfw)
  {
    StringWriter localStringWriter = new StringWriter();
    ˊ(paramfw, localStringWriter);
    return localStringWriter.toString();
  }
  
  public <T> gk<T> ᐝ(Class<T> paramClass)
  {
    return ˊ(jy.ˈ(paramClass));
  }
  
  public fw ᴶ(Object paramObject)
  {
    if (paramObject == null) {
      return fy.Ku;
    }
    return ˊ(paramObject, paramObject.getClass());
  }
  
  public String ᴸ(Object paramObject)
  {
    if (paramObject == null) {
      return ˋ(fy.Ku);
    }
    return ˋ(paramObject, paramObject.getClass());
  }
  
  static class if<T>
    extends gk<T>
  {
    private gk<T> Kh;
    
    public void ˊ(gk<T> paramgk)
    {
      if (this.Kh != null) {
        throw new AssertionError();
      }
      this.Kh = paramgk;
    }
    
    public void ˊ(kc paramkc, T paramT)
    {
      if (this.Kh == null) {
        throw new IllegalStateException();
      }
      this.Kh.ˊ(paramkc, paramT);
    }
    
    public T ˋ(jz paramjz)
    {
      if (this.Kh == null) {
        throw new IllegalStateException();
      }
      return this.Kh.ˋ(paramjz);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fl
 * JD-Core Version:    0.7.0.1
 */