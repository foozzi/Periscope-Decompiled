package o;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import tv.periscope.android.api.PsProfileImageUrls;
import tv.periscope.android.api.PsUser;

public class aad
{
  private final SharedPreferences blm;
  private final ot bny;
  private final List<String> bsA = new ArrayList();
  private final List<Object> bsB = new ArrayList();
  private final List<Object> bsC = new ArrayList();
  private final List<String> bsD = new ArrayList();
  private PsUser bsE;
  private final Map<String, PsUser> bsp = new HashMap();
  private final List<String> bsq = new ArrayList();
  private final List<String> bsr = new ArrayList();
  private final List<String> bss;
  private final Map<String, List<String>> bst = new HashMap();
  private final Map<String, List<String>> bsu = new HashMap();
  private final Map<String, Set<String>> bsv = new HashMap();
  private final Map<String, Set<String>> bsw = new HashMap();
  private final Map<ank, anj> bsx = new HashMap();
  private final List<String> bsy = new ArrayList();
  private final List<String> bsz = new ArrayList();
  
  public aad(Context paramContext, ot paramot)
  {
    this.blm = PreferenceManager.getDefaultSharedPreferences(paramContext);
    this.bny = paramot;
    paramContext = this.blm.getStringSet((String)zf.cON.ˊ("o.zf").getField("brC").get(null), null);
    if (paramContext == null)
    {
      this.bss = new ArrayList();
      return;
    }
    this.bss = new ArrayList(paramContext);
  }
  
  private Set<String> ˊ(String paramString1, String paramString2, List<PsUser> paramList, boolean paramBoolean)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      TreeSet localTreeSet = new TreeSet();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        PsUser localPsUser = (PsUser)paramList.next();
        this.bsp.put(localPsUser.id, localPsUser);
        if ((!localPsUser.id.equals(paramString2)) && (!this.bss.contains(localPsUser.id)))
        {
          localTreeSet.add(localPsUser.id);
          anj localanj = ˊ(paramString1, localPsUser.id, paramBoolean, localPsUser.um(), localPsUser.ul());
          this.bsx.put(ank.ˋ(paramString1, localPsUser.id, paramBoolean), localanj);
        }
      }
      return localTreeSet;
    }
    return Collections.emptySet();
  }
  
  private anj ˊ(String paramString1, String paramString2, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    paramString2 = ˊ(paramString1, paramString2, paramBoolean);
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = new anj(paramInt1, paramInt2, paramBoolean);
    }
    return paramString1;
  }
  
  private void ˊ(List<String> paramList, List<PsUser> paramList1, aak paramaak)
  {
    if (ˊ(paramList, paramList1)) {
      this.bny.ˣ(paramaak);
    }
  }
  
  private void ˊ(Map<String, List<String>> paramMap, String paramString, List<PsUser> paramList)
  {
    Object localObject2 = (List)paramMap.get(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new ArrayList();
    }
    ((List)localObject1).clear();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject2 = (PsUser)paramList.next();
      ((List)localObject1).add(((PsUser)localObject2).id);
      this.bsp.put(((PsUser)localObject2).id, localObject2);
    }
    paramMap.put(paramString, localObject1);
  }
  
  private void ˊ(aah paramaah, List<String> paramList, List<Object> paramList1)
  {
    if (paramList.isEmpty()) {
      return;
    }
    paramList1.add(new if(paramaah));
    paramList1.addAll(paramList.subList(0, Math.min(100, paramList.size())));
  }
  
  private boolean ˊ(List<String> paramList, List<PsUser> paramList1)
  {
    if (paramList1 == null) {
      return false;
    }
    paramList.clear();
    paramList1 = paramList1.iterator();
    while (paramList1.hasNext())
    {
      PsUser localPsUser = (PsUser)paramList1.next();
      paramList.add(localPsUser.id);
      this.bsp.put(localPsUser.id, localPsUser);
    }
    Collections.sort(paramList);
    return true;
  }
  
  public void logout()
  {
    this.bsE = null;
    vg();
    this.bsD.clear();
    this.bst.clear();
    this.bsu.clear();
    this.bsq.clear();
    this.bsr.clear();
    this.bss.clear();
    this.bsp.clear();
  }
  
  public void vf()
  {
    this.bsB.clear();
    this.bsC.clear();
    if (!this.bsA.isEmpty())
    {
      ˊ(aah.bsP, this.bsA, this.bsB);
      ˊ(aah.bsP, this.bsA, this.bsC);
    }
    if (!this.bsy.isEmpty())
    {
      ˊ(aah.bsO, this.bsy, this.bsB);
      ˊ(aah.bsO, this.bsy, this.bsC);
    }
    if (!this.bsz.isEmpty()) {
      ˊ(aah.bsQ, this.bsz, this.bsB);
    }
    this.bny.ˣ(aak.btU);
  }
  
  public void vg()
  {
    this.bsB.clear();
    this.bsC.clear();
    this.bsA.clear();
    this.bsy.clear();
    this.bsz.clear();
  }
  
  int vh()
  {
    return this.bsB.size();
  }
  
  int vi()
  {
    return this.bsC.size();
  }
  
  int vj()
  {
    return this.bsD.size();
  }
  
  public void vk()
  {
    this.blm.edit().putBoolean((String)zf.cON.ˊ("o.zf").getField("brG").get(null), true).apply();
  }
  
  public boolean vl()
  {
    return this.blm.getBoolean((String)zf.cON.ˊ("o.zf").getField("brG").get(null), false);
  }
  
  public String vm()
  {
    return this.blm.getString((String)zf.cON.ˊ("o.zf").getField("brH").get(null), null);
  }
  
  public String vn()
  {
    return this.blm.getString((String)zf.cON.ˊ("o.zf").getField("brI").get(null), null);
  }
  
  public String vo()
  {
    Object localObject = this.blm.getString((String)zf.cON.ˊ("o.zf").getField("brD").get(null), null);
    if (localObject == null) {
      return null;
    }
    localObject = (List)akn.bS().ˊ((String)localObject, new aae(this).V());
    if (localObject == null) {
      return null;
    }
    return ((PsProfileImageUrls)((List)localObject).get(((List)localObject).size() - 1)).url;
  }
  
  public String vp()
  {
    return this.blm.getString((String)zf.cON.ˊ("o.zf").getField("brv").get(null), null);
  }
  
  public String vq()
  {
    return this.blm.getString((String)zf.cON.ˊ("o.zf").getField("brt").get(null), null);
  }
  
  public int vr()
  {
    return this.blm.getInt((String)zf.cON.ˊ("o.zf").getField("brz").get(null), 0);
  }
  
  public int vs()
  {
    return this.blm.getInt((String)zf.cON.ˊ("o.zf").getField("bry").get(null), 0);
  }
  
  public int vt()
  {
    return this.blm.getInt((String)zf.cON.ˊ("o.zf").getField("brB").get(null), 1);
  }
  
  public String vu()
  {
    return this.blm.getString((String)zf.cON.ˊ("o.zf").getField("brw").get(null), null);
  }
  
  public int vv()
  {
    return this.blm.getInt((String)zf.cON.ˊ("o.zf").getField("brA").get(null), 0);
  }
  
  public String vw()
  {
    return this.blm.getString((String)zf.cON.ˊ("o.zf").getField("brx").get(null), null);
  }
  
  public String vx()
  {
    return this.blm.getString((String)zf.cON.ˊ("o.zf").getField("bru").get(null), null);
  }
  
  public boolean vy()
  {
    return this.blm.getBoolean((String)zf.cON.ˊ("o.zf").getField("brE").get(null), false);
  }
  
  public PsUser vz()
  {
    if (this.bsE == null)
    {
      PsUser localPsUser = new PsUser();
      localPsUser.bpy = vp();
      localPsUser.bpx = vq();
      localPsUser.id = vx();
      localPsUser.bpz = vu();
      localPsUser.bpJ = vo();
      localPsUser.bon = vt();
      this.bsE = localPsUser;
    }
    return this.bsE;
  }
  
  Object ĵ(int paramInt)
  {
    return this.bsB.get(paramInt);
  }
  
  Object ĸ(int paramInt)
  {
    return this.bsC.get(paramInt);
  }
  
  PsUser Ĺ(int paramInt)
  {
    return נּ((String)this.bsD.get(paramInt));
  }
  
  public int ˊ(String paramString, aah paramaah)
  {
    if (TextUtils.isEmpty(paramString))
    {
      switch (1.bsG[paramaah.ordinal()])
      {
      default: 
        break;
      case 2: 
        return this.bss.size();
      case 1: 
        return this.bsr.size();
      }
      return this.bsq.size();
    }
    switch (1.bsG[paramaah.ordinal()])
    {
    default: 
      break;
    case 1: 
      paramString = (List)this.bsu.get(paramString);
      if (paramString == null) {
        return 0;
      }
      return paramString.size();
    case 2: 
    case 3: 
      paramString = (List)this.bst.get(paramString);
      if (paramString == null) {
        return 0;
      }
      return paramString.size();
    case 6: 
      return this.bsA.size();
    case 4: 
      return this.bsz.size();
    }
    return this.bsy.size();
  }
  
  public anj ˊ(String paramString1, String paramString2, boolean paramBoolean)
  {
    return (anj)this.bsx.get(ank.ˋ(paramString1, paramString2, paramBoolean));
  }
  
  public PsUser ˊ(aah paramaah, String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString))
    {
      switch (1.bsG[paramaah.ordinal()])
      {
      default: 
        break;
      case 1: 
        return (PsUser)this.bsp.get(this.bsr.get(paramInt));
      case 2: 
        return (PsUser)this.bsp.get(this.bss.get(paramInt));
      }
      return (PsUser)this.bsp.get(this.bsq.get(paramInt));
    }
    switch (1.bsG[paramaah.ordinal()])
    {
    default: 
      break;
    case 1: 
      return (PsUser)this.bsp.get(((List)this.bsu.get(paramString)).get(paramInt));
    }
    return (PsUser)this.bsp.get(((List)this.bst.get(paramString)).get(paramInt));
  }
  
  public void ˊ(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    anj localanj = ˊ(paramString1, paramString2, paramBoolean, 0, paramInt);
    localanj.bpH += 1;
    this.bsx.put(ank.ˋ(paramString1, paramString2, paramBoolean), localanj);
    this.bny.ˣ(new aal(paramString1, paramString2, paramBoolean, localanj.bpH));
  }
  
  public void ˊ(String paramString1, String paramString2, List<anv> paramList)
  {
    if (paramList == null) {
      return;
    }
    int j = paramList.size();
    int i = 0;
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      anv localanv = (anv)paramList.next();
      if (this.bsp.containsKey(localanv.id()))
      {
        localArrayList.add(this.bsp.get(localanv.id()));
      }
      else
      {
        if (anw.isEmpty(localanv.displayName()))
        {
          i += 1;
          continue;
        }
        localObject = new PsUser();
        ((PsUser)localObject).bpy = localanv.displayName();
        ((PsUser)localObject).bpJ = localanv.Cv();
        ((PsUser)localObject).bpx = localanv.Cl();
        ((PsUser)localObject).id = localanv.id();
        localArrayList.add(localObject);
      }
      Object localObject = ˊ(paramString2, localanv.id(), false, 0, localanv.Cw());
      this.bsx.put(ank.ˋ(paramString2, localanv.id(), false), localObject);
    }
    vf.tL().ˏ(paramString2, Math.max(0, j - 1), i);
    ˊ(paramString1, paramString2, localArrayList, null);
  }
  
  public void ˊ(String paramString1, String paramString2, List<PsUser> paramList1, List<PsUser> paramList2)
  {
    this.bsv.put(paramString2, ˊ(paramString2, paramString1, paramList1, false));
    this.bsw.put(paramString2, ˊ(paramString2, paramString1, paramList2, true));
    this.bny.ˣ(aak.btY);
  }
  
  public void ˊ(aah paramaah, String paramString, List<PsUser> paramList)
  {
    switch (1.bsG[paramaah.ordinal()])
    {
    default: 
    case 3: 
      ˊ(this.bst, paramString, paramList);
      this.bny.ˣ(aak.btR);
      return;
    case 1: 
      ˊ(this.bsu, paramString, paramList);
      this.bny.ˣ(aak.btS);
      return;
    case 4: 
      ˊ(this.bsz, paramList);
      return;
    case 5: 
      ˊ(this.bsy, paramList);
      return;
    case 6: 
      ˊ(this.bsA, paramList);
      return;
    case 7: 
      ˊ(this.bsD, paramList);
      this.bny.ˣ(aak.btV);
    }
  }
  
  public void ˊ(PsUser paramPsUser)
  {
    this.bsp.put(paramPsUser.id, paramPsUser);
    this.bny.ˣ(aak.btT);
  }
  
  public void ˋ(HashSet<String> paramHashSet)
  {
    int i = vr();
    paramHashSet = paramHashSet.iterator();
    while (paramHashSet.hasNext())
    {
      String str = (String)paramHashSet.next();
      int j = i;
      if (this.bsp.containsKey(str))
      {
        ((PsUser)this.bsp.get(str)).bpE = true;
        j = i + 1;
      }
      i = j;
    }
    paramHashSet = this.blm.edit();
    paramHashSet.putInt((String)zf.cON.ˊ("o.zf").getField("brz").get(null), i);
    paramHashSet.apply();
    this.bny.ˣ(aak.btP);
    this.bny.ˣ(aak.btQ);
  }
  
  public void ˋ(PsUser paramPsUser)
  {
    SharedPreferences.Editor localEditor = this.blm.edit();
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("bru").get(null), paramPsUser.id);
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("brt").get(null), paramPsUser.bpx);
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("brx").get(null), paramPsUser.description);
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("brv").get(null), paramPsUser.bpy);
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("brw").get(null), paramPsUser.bpz);
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("brD").get(null), akn.bS().ᴸ(paramPsUser.bpA));
    localEditor.putInt((String)zf.cON.ˊ("o.zf").getField("bry").get(null), paramPsUser.bpB);
    localEditor.putInt((String)zf.cON.ˊ("o.zf").getField("brz").get(null), paramPsUser.bpC);
    localEditor.putInt((String)zf.cON.ˊ("o.zf").getField("brB").get(null), Math.max(paramPsUser.bon, 1));
    localEditor.putBoolean((String)zf.cON.ˊ("o.zf").getField("brE").get(null), paramPsUser.bpG);
    localEditor.putBoolean((String)zf.cON.ˊ("o.zf").getField("brF").get(null), paramPsUser.bpI);
    localEditor.apply();
    this.bny.ˣ(aak.btQ);
  }
  
  public void ᐨ(List<PsUser> paramList)
  {
    ˊ(this.bsq, paramList, aak.btR);
  }
  
  public void ᑊ(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.blm.edit();
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("brH").get(null), paramString1);
    localEditor.putString((String)zf.cON.ˊ("o.zf").getField("brI").get(null), paramString2);
    localEditor.apply();
    this.bny.ˣ(aak.btZ);
  }
  
  public Set<String> 一(String paramString)
  {
    return (Set)this.bsv.get(paramString);
  }
  
  public Set<String> גּ(String paramString)
  {
    return (Set)this.bsw.get(paramString);
  }
  
  public aah זּ(String paramString)
  {
    if (this.bsA.contains(paramString)) {
      return aah.bsP;
    }
    if (this.bsy.contains(paramString)) {
      return aah.bsO;
    }
    if (this.bsz.contains(paramString)) {
      return aah.bsQ;
    }
    if (this.bsD.contains(paramString)) {
      return aah.bsR;
    }
    return null;
  }
  
  public PsUser נּ(String paramString)
  {
    return (PsUser)this.bsp.get(paramString);
  }
  
  public boolean רּ(String paramString)
  {
    return this.bss.contains(paramString);
  }
  
  public void ﭕ(String paramString)
  {
    paramString = (PsUser)this.bsp.get(paramString);
    paramString.bpE = true;
    paramString.bpB += 1;
    this.blm.edit().putInt((String)zf.cON.ˊ("o.zf").getField("brz").get(null), vr() + 1).apply();
    this.bny.ˣ(aak.btO);
    this.bny.ˣ(aak.btQ);
  }
  
  public void ﭜ(String paramString)
  {
    paramString = (PsUser)this.bsp.get(paramString);
    paramString.bpE = false;
    int j = vr() - 1;
    int i = j;
    if (j < 0) {
      i = 0;
    }
    paramString.bpB = Math.max(0, paramString.bpB - 1);
    this.blm.edit().putInt((String)zf.cON.ˊ("o.zf").getField("brz").get(null), i).apply();
    this.bny.ˣ(aak.btP);
    this.bny.ˣ(aak.btQ);
  }
  
  public void ﭡ(String paramString)
  {
    SharedPreferences.Editor localEditor = this.blm.edit();
    PsUser localPsUser = (PsUser)this.bsp.get(paramString);
    if (localPsUser != null)
    {
      localPsUser.bpF = true;
      localPsUser.bpE = false;
    }
    if (!this.bss.contains(paramString)) {
      this.bss.add(paramString);
    }
    localEditor.putStringSet((String)zf.cON.ˊ("o.zf").getField("brC").get(null), new HashSet(this.bss)).apply();
    localEditor.putInt((String)zf.cON.ˊ("o.zf").getField("brA").get(null), vv() + 1).apply();
    this.bny.ˣ(aak.bub);
    this.bny.ˣ(aak.btQ);
  }
  
  public void ﭤ(String paramString)
  {
    SharedPreferences.Editor localEditor = this.blm.edit();
    paramString = (PsUser)this.bsp.get(paramString);
    paramString.bpF = false;
    paramString.bpE = false;
    int i = Math.max(0, vv() - 1);
    localEditor.putInt((String)zf.cON.ˊ("o.zf").getField("brA").get(null), i).apply();
    if (this.bss.contains(paramString.id)) {
      this.bss.remove(paramString.id);
    }
    localEditor.putStringSet((String)zf.cON.ˊ("o.zf").getField("brC").get(null), new HashSet(this.bss)).apply();
    this.bny.ˣ(aak.buc);
    this.bny.ˣ(aak.btQ);
  }
  
  public void ﹳ(List<PsUser> paramList)
  {
    ˊ(this.bsr, paramList, aak.btS);
  }
  
  public void ﾞ(List<PsUser> paramList)
  {
    if (ˊ(this.bss, paramList))
    {
      paramList = this.blm.edit();
      paramList.putInt((String)zf.cON.ˊ("o.zf").getField("brA").get(null), this.bss.size()).apply();
      paramList.putStringSet((String)zf.cON.ˊ("o.zf").getField("brC").get(null), new HashSet(this.bss)).apply();
      this.bny.ˣ(aak.bud);
    }
  }
  
  public static class if
  {
    public aah bsH;
    
    public if(aah paramaah)
    {
      this.bsH = paramaah;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aad
 * JD-Core Version:    0.7.0.1
 */