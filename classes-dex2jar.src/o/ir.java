package o;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

public final class ir
{
  public static final gk<StringBuilder> MA = new iz();
  public static final gl MB = ˊ(StringBuilder.class, MA);
  public static final gk<StringBuffer> MC = new ja();
  public static final gl MD = ˊ(StringBuffer.class, MC);
  public static final gk<URL> ME = new jb();
  public static final gl MF = ˊ(URL.class, ME);
  public static final gk<URI> MG = new jc();
  public static final gl MH = ˊ(URI.class, MG);
  public static final gk<InetAddress> MI = new je();
  public static final gl MJ = ˋ(InetAddress.class, MI);
  public static final gk<UUID> MK = new jf();
  public static final gl ML = ˊ(UUID.class, MK);
  public static final gl MM = new jg();
  public static final gk<Calendar> MN = new ji();
  public static final gl MO = ˋ(Calendar.class, GregorianCalendar.class, MN);
  public static final gk<Locale> MP = new jj();
  public static final gl MQ = ˊ(Locale.class, MP);
  public static final gk<fw> MR = new jk();
  public static final gl MS = ˋ(fw.class, MR);
  public static final gl MT = new jl();
  public static final gk<Class> Mc = new is();
  public static final gl Md = ˊ(Class.class, Mc);
  public static final gk<BitSet> Me = new jd();
  public static final gl Mf = ˊ(BitSet.class, Me);
  public static final gk<Boolean> Mg = new jp();
  public static final gk<Boolean> Mh = new js();
  public static final gl Mi = ˊ(Boolean.TYPE, Boolean.class, Mg);
  public static final gk<Number> Mj = new jt();
  public static final gl Mk = ˊ(Byte.TYPE, Byte.class, Mj);
  public static final gk<Number> Ml = new ju();
  public static final gl Mm = ˊ(Short.TYPE, Short.class, Ml);
  public static final gk<Number> Mn = new jv();
  public static final gl Mo = ˊ(Integer.TYPE, Integer.class, Mn);
  public static final gk<Number> Mp = new jw();
  public static final gk<Number> Mq = new jx();
  public static final gk<Number> Mr = new it();
  public static final gk<Number> Ms = new iu();
  public static final gl Mt = ˊ(Number.class, Ms);
  public static final gk<Character> Mu = new iv();
  public static final gl Mv = ˊ(Character.TYPE, Character.class, Mu);
  public static final gk<String> Mw = new iw();
  public static final gk<BigDecimal> Mx = new ix();
  public static final gk<BigInteger> My = new iy();
  public static final gl Mz = ˊ(String.class, Mw);
  
  public static <TT> gl ˊ(Class<TT> paramClass1, Class<TT> paramClass2, gk<? super TT> paramgk)
  {
    return new jo(paramClass1, paramClass2, paramgk);
  }
  
  public static <TT> gl ˊ(Class<TT> paramClass, gk<TT> paramgk)
  {
    return new jn(paramClass, paramgk);
  }
  
  public static <TT> gl ˊ(jy<TT> paramjy, gk<TT> paramgk)
  {
    return new jm(paramjy, paramgk);
  }
  
  public static <TT> gl ˋ(Class<TT> paramClass, Class<? extends TT> paramClass1, gk<? super TT> paramgk)
  {
    return new jq(paramClass, paramClass1, paramgk);
  }
  
  public static <TT> gl ˋ(Class<TT> paramClass, gk<TT> paramgk)
  {
    return new jr(paramClass, paramgk);
  }
  
  static final class if<T extends Enum<T>>
    extends gk<T>
  {
    private final Map<String, T> Nd = new HashMap();
    private final Map<T, String> Ne = new HashMap();
    
    public if(Class<T> paramClass)
    {
      try
      {
        Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
        int j = arrayOfEnum.length;
        int i = 0;
        while (i < j)
        {
          Enum localEnum = arrayOfEnum[i];
          String str = localEnum.name();
          go localgo = (go)paramClass.getField(str).getAnnotation(go.class);
          if (localgo != null) {
            str = localgo.value();
          }
          this.Nd.put(str, localEnum);
          this.Ne.put(localEnum, str);
          i += 1;
        }
        return;
      }
      catch (NoSuchFieldException paramClass)
      {
        throw new AssertionError();
      }
    }
    
    public void ˊ(kc paramkc, T paramT)
    {
      if (paramT == null) {
        paramT = null;
      } else {
        paramT = (String)this.Ne.get(paramT);
      }
      paramkc.ᖮ(paramT);
    }
    
    public T ᵔ(jz paramjz)
    {
      if (paramjz.J() == kb.NB)
      {
        paramjz.nextNull();
        return null;
      }
      return (Enum)this.Nd.get(paramjz.nextString());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ir
 * JD-Core Version:    0.7.0.1
 */