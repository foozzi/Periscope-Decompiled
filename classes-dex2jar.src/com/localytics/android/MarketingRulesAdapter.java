package com.localytics.android;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.FutureTask;

final class MarketingRulesAdapter
  extends BaseAdapter
{
  private final Context mContext;
  private final MarketingHandler mHandler;
  private final List<MarketingMessage> mMarketingRules;
  
  MarketingRulesAdapter(Context paramContext, MarketingHandler paramMarketingHandler)
  {
    this.mContext = paramContext;
    this.mMarketingRules = new ArrayList();
    this.mHandler = paramMarketingHandler;
  }
  
  public int getCount()
  {
    return this.mMarketingRules.size();
  }
  
  public Map<String, Object> getItem(int paramInt)
  {
    return (Map)this.mMarketingRules.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return ((Integer)((MarketingMessage)this.mMarketingRules.get(paramInt)).get("campaign_id")).intValue();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    paramView = paramViewGroup;
    if (paramViewGroup == null)
    {
      paramView = new LinearLayout(this.mContext);
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      paramView.setOrientation(0);
      paramViewGroup = new LinearLayout(this.mContext);
      paramViewGroup.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      paramViewGroup.setGravity(16);
      paramViewGroup.setOrientation(1);
      int i = (int)(this.mContext.getResources().getDisplayMetrics().density * 8.0F + 0.5F);
      paramViewGroup.setPadding(i << 1, i, i << 1, i);
      paramView.addView(paramViewGroup);
      localTextView1 = new TextView(this.mContext);
      localTextView1.setId(1);
      localTextView1.setTextSize(16.0F);
      localTextView1.setTextColor(-16777216);
      TextView localTextView2 = new TextView(this.mContext);
      localTextView2.setId(2);
      localTextView2.setTextSize(24.0F);
      localTextView2.setTextColor(-16777216);
      paramViewGroup.addView(localTextView2);
      paramViewGroup.addView(localTextView1);
    }
    paramViewGroup = (TextView)paramView.findViewById(1);
    TextView localTextView1 = (TextView)paramView.findViewById(2);
    paramViewGroup.setText(String.format("Campaign ID: %d", new Object[] { Long.valueOf(getItemId(paramInt)) }));
    localTextView1.setText((String)getItem(paramInt).get("rule_name"));
    return paramView;
  }
  
  boolean updateDataSet()
  {
    this.mMarketingRules.clear();
    FutureTask localFutureTask = new FutureTask(new MarketingRulesAdapter.1(this));
    new MarketingRulesAdapter.2(this, localFutureTask).start();
    try
    {
      boolean bool = ((Boolean)localFutureTask.get()).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.MarketingRulesAdapter
 * JD-Core Version:    0.7.0.1
 */