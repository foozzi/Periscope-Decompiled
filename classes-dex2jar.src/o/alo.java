package o;

import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.aux;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import tv.periscope.android.api.PsUser;

public class alo
  extends FrameLayout
  implements View.OnClickListener, ViewPager.aux
{
  private static final aah[] bMd = { aah.bsL, aah.bsM };
  private TextView bHk;
  private TextView bHl;
  private boolean bIb;
  private alv bIc;
  private alv bId;
  private final Map<aah, RecyclerView> bMe = new HashMap();
  private TextView bMf;
  private TextView bMg;
  private TextView bMh;
  private ImageView bMi;
  private als bMj;
  private amb bMk;
  private ImageView bMl;
  private Dialog bMm;
  private List<String> bMn;
  private ListAdapter bMo;
  private View bMp;
  private View bMq;
  private View bMr;
  private ViewPager bMs;
  private View bMt;
  private View bMu;
  private boolean bMv;
  private amq bMw;
  private View bMx;
  private String bMy;
  private PsUser bsE;
  private View bzL;
  private TextView bzX;
  private int γ;
  private boolean ᘄ;
  
  public alo(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public alo(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
  }
  
  public alo(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private void BC()
  {
    vi.ˊ(vi.if.bmZ);
    int i;
    if (!this.bMv) {
      i = 1;
    } else {
      i = 0;
    }
    this.bMj.Ɨ(this.bsE.id);
    if (i != 0) {
      BE();
    }
  }
  
  private void BD()
  {
    vi.ˊ(vi.if.bmY);
    int i;
    if (!this.bMv) {
      i = 1;
    } else {
      i = 0;
    }
    this.bMj.ſ(this.bsE.id);
    if (i != 0) {
      BE();
    }
  }
  
  private void BE()
  {
    boolean bool;
    if (!this.bMv) {
      bool = true;
    } else {
      bool = false;
    }
    this.bMv = bool;
    int i;
    int j;
    if (this.bMv)
    {
      i = 0;
      j = 8;
    }
    else
    {
      i = 8;
      j = 0;
    }
    this.bMi.setVisibility(j);
    this.bHk.setVisibility(j);
    this.bHl.setVisibility(j);
    this.bMu.setVisibility(j);
    this.bMt.setVisibility(j);
    ˊ(this.bsE, j);
    this.bMx.setVisibility(i);
    this.bMr.setVisibility(i);
    this.bMw.setScrollVisibility(i);
  }
  
  private void BF()
  {
    if (this.bsE != null)
    {
      this.bMn.clear();
      vi.ˊ(vi.if.bmU);
      if (this.bsE.bpF) {
        this.bMn.add(0, getResources().getString(2131099859));
      } else {
        this.bMn.add(0, getResources().getString(2131099858));
      }
      this.bMm.show();
    }
  }
  
  private void By()
  {
    Object localObject1 = new ArrayList(bMd.length);
    int i = 0;
    while (i < bMd.length)
    {
      localObject2 = (RecyclerView)LayoutInflater.from(getContext()).inflate(2130903107, null);
      ((List)localObject1).add(localObject2);
      this.bMe.put(bMd[i], localObject2);
      i += 1;
    }
    this.bMw = ((amq)findViewById(2131427525));
    this.bMw.setScrollVisibility(8);
    Object localObject2 = new aln();
    ((aln)localObject2).ˊ(new amp(this.bMw));
    ((aln)localObject2).ˊ(this);
    localObject1 = new alt((List)localObject1);
    this.bMs = ((ViewPager)findViewById(2131427530));
    this.bMs.setAdapter((ﹲ)localObject1);
    this.bMs.setOnPageChangeListener((ViewPager.aux)localObject2);
    this.bMr = findViewById(2131427567);
  }
  
  private void Bz()
  {
    this.bMl = ((ImageView)findViewById(2131427418));
    this.bMl.setOnClickListener(this);
    Context localContext = getContext();
    this.bMn = new ArrayList();
    this.bMo = new ArrayAdapter(localContext, 2130903094, this.bMn);
    this.bMm = new AlertDialog.Builder(getContext()).setAdapter(this.bMo, new alr(this)).create();
  }
  
  private void ˊ(Context paramContext)
  {
    paramContext = LayoutInflater.from(paramContext).inflate(2130903106, this, true);
    this.bMq = findViewById(2131427560);
    this.bMq.setOnClickListener(this);
    this.bMg = ((TextView)paramContext.findViewById(2131427565));
    this.bMh = ((TextView)paramContext.findViewById(2131427566));
    this.bHl = ((TextView)paramContext.findViewById(2131427519));
    this.bzX = ((TextView)paramContext.findViewById(2131427509));
    this.bHk = ((TextView)paramContext.findViewById(2131427501));
    this.bMu = paramContext.findViewById(2131427562);
    this.bMf = ((TextView)paramContext.findViewById(2131427563));
    this.bMi = ((ImageView)paramContext.findViewById(2131427433));
    this.bzL = paramContext.findViewById(2131427490);
    this.bMk = ((amb)paramContext.findViewById(2131427568));
    this.bMk.setOnClickListener(this);
    this.bMt = paramContext.findViewById(2131427495);
    Bz();
    By();
    this.bMx = paramContext.findViewById(2131427516);
    this.bMx.setOnClickListener(this);
    paramContext.findViewById(2131427564).setOnClickListener(this);
    paramContext.findViewById(2131427548).setOnClickListener(this);
    paramContext = findViewById(2131427561);
    paramContext.setOnClickListener(this);
    this.γ = akn.ᒢ(getContext()).y;
    this.bMp = paramContext;
    this.bIc = new alp(this);
    this.bId = new alq(this);
    setVisibility(8);
  }
  
  private void ˊ(PsUser paramPsUser, int paramInt)
  {
    if (paramPsUser != null) {
      paramPsUser = paramPsUser.id;
    } else {
      paramPsUser = null;
    }
    if ((paramPsUser == null) || (ᴿ(paramPsUser)))
    {
      this.bMl.setVisibility(8);
      return;
    }
    this.bMl.setVisibility(paramInt);
  }
  
  private boolean ᴿ(String paramString)
  {
    return paramString.equals(vf.tI().vx());
  }
  
  public void Av()
  {
    Iterator localIterator = this.bMe.values().iterator();
    while (localIterator.hasNext())
    {
      ajq localajq = (ajq)((RecyclerView)localIterator.next()).ᵇ();
      if (localajq != null) {
        localajq.notifyDataSetChanged();
      }
    }
  }
  
  public void BA()
  {
    if (this.bsE != null)
    {
      ᐝ(vf.tI().נּ(this.bsE.id));
      Iterator localIterator = this.bMe.values().iterator();
      while (localIterator.hasNext())
      {
        ajq localajq = (ajq)((RecyclerView)localIterator.next()).ᵇ();
        if (localajq != null) {
          localajq.notifyDataSetChanged();
        }
      }
    }
  }
  
  public String BB()
  {
    if (this.bsE == null) {
      return null;
    }
    return this.bsE.id;
  }
  
  public void clear()
  {
    this.bsE = null;
    Iterator localIterator = this.bMe.values().iterator();
    while (localIterator.hasNext())
    {
      ajq localajq = (ajq)((RecyclerView)localIterator.next()).ᵇ();
      if (localajq != null)
      {
        localajq.ﯧ("-1");
        localajq.notifyDataSetChanged();
      }
    }
  }
  
  public void hide()
  {
    ᵇ(null);
  }
  
  public boolean isShowing()
  {
    return this.bIb;
  }
  
  public void onClick(View paramView)
  {
    if ((this.bMj == null) || (this.bsE == null)) {
      return;
    }
    switch (paramView.getId())
    {
    default: 
    case 2131427560: 
      hide();
      return;
    case 2131427568: 
      if (this.bsE.bpF)
      {
        this.bMj.ﭤ(this.bsE.id);
        return;
      }
      if (this.bsE.bpE)
      {
        this.bMj.ﭜ(this.bsE.id);
        return;
      }
      this.bMj.ﭕ(this.bsE.id);
      return;
    case 2131427548: 
      this.bMs.setCurrentItem(1);
      if (!this.bMv)
      {
        BD();
        return;
      }
      break;
    case 2131427564: 
      this.bMs.setCurrentItem(0);
      if (!this.bMv)
      {
        BC();
        return;
      }
      break;
    case 2131427418: 
      BF();
      return;
    case 2131427516: 
      BE();
    }
  }
  
  public void setDelegate(als paramals)
  {
    this.bMj = paramals;
    aah[] arrayOfaah = bMd;
    int j = arrayOfaah.length;
    int i = 0;
    while (i < j)
    {
      aah localaah = arrayOfaah[i];
      RecyclerView localRecyclerView = (RecyclerView)this.bMe.get(localaah);
      ajq localajq = new ajq(new aag(vf.tI()), paramals);
      localajq.ˊ(localaah);
      localRecyclerView.setAdapter(localajq);
      localRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
      i += 1;
    }
  }
  
  public void show()
  {
    if (this.ᘄ) {
      return;
    }
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.bMq, "alpha", new float[] { 0.0F, 0.6F });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(this.bMp, "translationY", new float[] { this.γ, 0.0F });
    localObjectAnimator2.setInterpolator(alk.ᵌ(getContext()));
    localObjectAnimator2.addListener(this.bIc);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(localObjectAnimator2).with(localObjectAnimator1);
    localAnimatorSet.start();
  }
  
  public void ʹ(int paramInt) {}
  
  public void ˊ(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void ᐝ(PsUser paramPsUser)
  {
    if (paramPsUser == null) {
      return;
    }
    ˊ(paramPsUser, 0);
    this.bzX.setText(paramPsUser.bpy);
    this.bHk.setText(getContext().getString(2131099909, new Object[] { paramPsUser.bpx }));
    this.bMf.setText(akn.ˊ(getResources(), paramPsUser.uk(), false));
    this.bHl.setText(paramPsUser.description);
    this.bMg.setText(akn.ˊ(getResources(), paramPsUser.bpB, true));
    this.bMh.setText(akn.ˊ(getResources(), paramPsUser.bpC, true));
    if (paramPsUser.bpI) {
      this.bzL.setVisibility(0);
    } else {
      this.bzL.setVisibility(8);
    }
    if (ᴿ(paramPsUser.id)) {
      localObject = amb.if.bMO;
    } else if (paramPsUser.bpF) {
      localObject = amb.if.bMN;
    } else if (paramPsUser.bpE) {
      localObject = amb.if.bMM;
    } else {
      localObject = amb.if.bML;
    }
    this.bMk.setState((amb.if)localObject);
    if ((this.bsE == null) || (this.bsE.uj() == null) || (!this.bsE.uj().equals(paramPsUser.uj()))) {
      ᓲ.ˌ(getContext()).ʻ(paramPsUser.uj()).ˊ(abe.bvo).ﹷ(2131296386).ץ().ˊ(this.bMi);
    }
    this.bsE = paramPsUser;
    Object localObject = this.bMe.values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      ajq localajq = (ajq)((RecyclerView)((Iterator)localObject).next()).ᵇ();
      if (localajq != null) {
        localajq.ﯧ(paramPsUser.id);
      }
    }
  }
  
  public void ᵇ(String paramString)
  {
    if (this.ᘄ) {
      return;
    }
    this.bMy = paramString;
    paramString = ObjectAnimator.ofFloat(this.bMq, "alpha", new float[] { 0.6F, 0.0F });
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this.bMp, "translationY", new float[] { 0.0F, this.γ });
    localObjectAnimator.setInterpolator(alk.ᖮ(getContext()));
    localObjectAnimator.addListener(this.bId);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(localObjectAnimator).with(paramString);
    localAnimatorSet.start();
  }
  
  public void ﾞ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      BC();
      return;
    }
    BD();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alo
 * JD-Core Version:    0.7.0.1
 */