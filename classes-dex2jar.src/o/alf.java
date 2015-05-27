package o;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class alf
  extends RelativeLayout
  implements View.OnClickListener
{
  private List<ale> bAd = new ArrayList();
  private TextView bLI;
  private ViewGroup bLJ;
  
  public alf(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public alf(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
  }
  
  public alf(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private void Bv()
  {
    int i = this.bLJ.getChildCount();
    int j = this.bAd.size();
    if (i < j) {
      ͺ(this.bLJ, j - i);
    }
    int k = this.bLJ.getChildCount();
    i = 0;
    while (i < k)
    {
      Object localObject = this.bLJ.getChildAt(i);
      if (i < j)
      {
        ale localale = (ale)this.bAd.get(i);
        ((View)localObject).setVisibility(0);
        localObject = (alj)((View)localObject).getTag();
        localale.xh().ˊ((alj)localObject, localale, i);
      }
      else
      {
        ((View)localObject).setVisibility(8);
      }
      i += 1;
    }
  }
  
  private void ˊ(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903065, this, true);
    this.bLI = ((TextView)findViewById(2131427414));
    this.bLJ = ((ViewGroup)findViewById(2131427416));
    setOnClickListener(this);
  }
  
  private void ͺ(ViewGroup paramViewGroup, int paramInt)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(getContext());
    int i = 0;
    while (i < paramInt)
    {
      View localView = localLayoutInflater.inflate(2130903067, this.bLJ, false);
      localView.setTag(new alj(localView));
      paramViewGroup.addView(localView);
      i += 1;
    }
  }
  
  public void onClick(View paramView) {}
  
  public void setActions(List<? extends ale> paramList)
  {
    this.bAd.clear();
    if (paramList != null) {
      this.bAd.addAll(paramList);
    }
    Bv();
  }
  
  public void setSnippet(String paramString)
  {
    if (anw.ᐨ(paramString))
    {
      this.bLI.setText(akn.ᴗ(paramString));
      this.bLI.setVisibility(0);
      return;
    }
    this.bLI.setVisibility(8);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alf
 * JD-Core Version:    0.7.0.1
 */