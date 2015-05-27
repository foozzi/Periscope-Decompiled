.class Landroid/support/v4/view/ViewPager$ʻ;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02bb"
.end annotation


# instance fields
.field final synthetic ⅹ:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 2823
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$ʻ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;Lo/ᔾ;)V
    .locals 0

    .line 2823
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager$ʻ;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2826
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ʻ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->ᴶ()V

    .line 2827
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2830
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$ʻ;->ⅹ:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->ᴶ()V

    .line 2831
    return-void
.end method
