package com.localytics.android;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.Map;

class TestModeListView$TestModeDialog$3
  implements AdapterView.OnItemClickListener
{
  TestModeListView$TestModeDialog$3(TestModeListView.TestModeDialog paramTestModeDialog) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (TestModeListView.access$200(this.this$1.this$0) != null)
    {
      paramView = (MarketingCallable)TestModeListView.access$200(this.this$1.this$0).get(Integer.valueOf(11));
      if (paramView != null) {
        paramView.call(new Object[] { paramAdapterView.getItemAtPosition(paramInt) });
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.TestModeListView.TestModeDialog.3
 * JD-Core Version:    0.7.0.1
 */