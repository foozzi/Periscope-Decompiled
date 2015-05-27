.class Lo/ﺑ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺑ$ʽ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﺑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field ῐ:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<Landroid/view/View;Lo/\u1d58;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﺑ$if;->ῐ:Ljava/util/WeakHashMap;

    return-void
.end method

.method private ˊ(Lo/ﹷ;I)Z
    .locals 4

    .line 844
    invoke-interface {p1}, Lo/ﹷ;->computeHorizontalScrollOffset()I

    move-result v2

    .line 845
    invoke-interface {p1}, Lo/ﹷ;->computeHorizontalScrollRange()I

    move-result v0

    invoke-interface {p1}, Lo/ﹷ;->computeHorizontalScrollExtent()I

    move-result v1

    sub-int v3, v0, v1

    .line 847
    if-nez v3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 848
    :cond_0
    if-gez p2, :cond_2

    .line 849
    if-lez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 851
    :cond_2
    add-int/lit8 v0, v3, -0x1

    if-ge v2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private ˋ(Lo/ﹷ;I)Z
    .locals 4

    .line 856
    invoke-interface {p1}, Lo/ﹷ;->computeVerticalScrollOffset()I

    move-result v2

    .line 857
    invoke-interface {p1}, Lo/ﹷ;->computeVerticalScrollRange()I

    move-result v0

    invoke-interface {p1}, Lo/ﹷ;->computeVerticalScrollExtent()I

    move-result v1

    sub-int v3, v0, v1

    .line 859
    if-nez v3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 860
    :cond_0
    if-gez p2, :cond_2

    .line 861
    if-lez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 863
    :cond_2
    add-int/lit8 v0, v3, -0x1

    if-ge v2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public resolveSizeAndState(III)I
    .locals 1

    .line 503
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public ʹ(Landroid/view/View;)I
    .locals 1

    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public ʻ(Landroid/view/View;F)V
    .locals 0

    .line 742
    return-void
.end method

.method public ʾ(Landroid/view/View;)Z
    .locals 1

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public ʿ(Landroid/view/View;)V
    .locals 0

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 431
    return-void
.end method

.method public ˈ(Landroid/view/View;)I
    .locals 1

    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public ˉ(Landroid/view/View;)F
    .locals 1

    .line 460
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public ˊ(Landroid/view/View;F)V
    .locals 0

    .line 660
    return-void
.end method

.method public ˊ(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .line 464
    return-void
.end method

.method public ˊ(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 436
    invoke-virtual {p0}, Lo/ﺑ$if;->ᐪ()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    return-void
.end method

.method public ˊ(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .line 439
    invoke-virtual {p0}, Lo/ﺑ$if;->ᐪ()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method

.method public ˊ(Landroid/view/View;Lo/ﹾ;)V
    .locals 0

    .line 406
    return-void
.end method

.method public ˊ(Landroid/view/View;Z)V
    .locals 0

    .line 797
    return-void
.end method

.method public ˊ(Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 761
    return-void
.end method

.method public ˋ(Landroid/view/View;F)V
    .locals 0

    .line 665
    return-void
.end method

.method public ˋ(Landroid/view/View;Z)V
    .locals 0

    .line 802
    return-void
.end method

.method public ˋ(Landroid/view/View;I)Z
    .locals 1

    .line 391
    instance-of v0, p1, Lo/ﹷ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/ﹷ;

    invoke-direct {p0, v0, p2}, Lo/ﺑ$if;->ˊ(Lo/ﹷ;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˌ(Landroid/view/View;)I
    .locals 1

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public ˍ(Landroid/view/View;)I
    .locals 1

    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public ˎ(Landroid/view/View;F)V
    .locals 0

    .line 670
    return-void
.end method

.method public ˎ(Landroid/view/View;I)Z
    .locals 1

    .line 395
    instance-of v0, p1, Lo/ﹷ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/ﹷ;

    invoke-direct {p0, v0, p2}, Lo/ﺑ$if;->ˋ(Lo/ﹷ;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˏ(Landroid/view/View;F)V
    .locals 0

    .line 685
    return-void
.end method

.method public ˏ(Landroid/view/View;I)V
    .locals 0

    .line 449
    return-void
.end method

.method public ˑ(Landroid/view/View;)F
    .locals 1

    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public ͺ(Landroid/view/View;)I
    .locals 1

    .line 399
    const/4 v0, 0x2

    return v0
.end method

.method public ՙ(Landroid/view/View;)V
    .locals 0

    .line 738
    return-void
.end method

.method public י(Landroid/view/View;)V
    .locals 0

    .line 776
    return-void
.end method

.method public ـ(Landroid/view/View;)F
    .locals 1

    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public ٴ(Landroid/view/View;)Z
    .locals 1

    .line 929
    invoke-static {p1}, Lo/ﻧ;->ٴ(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public ᐝ(Landroid/view/View;F)V
    .locals 0

    .line 690
    return-void
.end method

.method public ᐧ(Landroid/view/View;)I
    .locals 1

    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public ᐨ(Landroid/view/View;)I
    .locals 1

    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method ᐪ()J
    .locals 2

    .line 442
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public ι(Landroid/view/View;)Z
    .locals 1

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public ﹳ(Landroid/view/View;)Lo/ᵘ;
    .locals 1

    .line 649
    new-instance v0, Lo/ᵘ;

    invoke-direct {v0, p1}, Lo/ᵘ;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public ﾞ(Landroid/view/View;)F
    .locals 1

    .line 629
    const/4 v0, 0x0

    return v0
.end method
