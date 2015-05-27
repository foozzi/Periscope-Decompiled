.class final Lcom/localytics/android/MarketingRulesAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/localytics/android/MarketingHandler;

.field private final mMarketingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/localytics/android/MarketingHandler;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/localytics/android/MarketingRulesAdapter;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mMarketingRules:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/localytics/android/MarketingRulesAdapter;->mHandler:Lcom/localytics/android/MarketingHandler;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/MarketingRulesAdapter;)Lcom/localytics/android/MarketingHandler;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mHandler:Lcom/localytics/android/MarketingHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/MarketingRulesAdapter;)Ljava/util/List;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mMarketingRules:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mMarketingRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingRulesAdapter;->getItem(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mMarketingRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mMarketingRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    const-string v1, "campaign_id"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    int-to-long v0, v2

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 102
    move-object v4, p2

    .line 104
    if-nez v4, :cond_0

    .line 107
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 117
    shl-int/lit8 v0, v7, 0x1

    shl-int/lit8 v1, v7, 0x1

    invoke-virtual {v6, v0, v7, v1, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 118
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v8, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setId(I)V

    .line 123
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    const/high16 v0, -0x1000000

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    new-instance v9, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setId(I)V

    .line 127
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    const/high16 v0, -0x1000000

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    move-object v4, v5

    .line 139
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 140
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 142
    const-string v0, "Campaign ID: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingRulesAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/localytics/android/MarketingRulesAdapter;->getItem(I)Ljava/util/Map;

    move-result-object v0

    const-string v1, "rule_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-object v4
.end method

.method updateDataSet()Z
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/localytics/android/MarketingRulesAdapter;->mMarketingRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/localytics/android/MarketingRulesAdapter$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingRulesAdapter$1;-><init>(Lcom/localytics/android/MarketingRulesAdapter;)V

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 62
    new-instance v0, Lcom/localytics/android/MarketingRulesAdapter$2;

    invoke-direct {v0, p0, v1}, Lcom/localytics/android/MarketingRulesAdapter$2;-><init>(Lcom/localytics/android/MarketingRulesAdapter;Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {v0}, Lcom/localytics/android/MarketingRulesAdapter$2;->start()V

    .line 72
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 74
    :catch_0
    move-exception v2

    .line 76
    const/4 v0, 0x0

    return v0
.end method
