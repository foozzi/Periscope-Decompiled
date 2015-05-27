.class public Lo/ahb;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private bEk:Lo/amf;

.field private bEl:Lo/agp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lo/ahb;->ˊ(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lo/ahb;->ˊ(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lo/ahb;->ˊ(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 5

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030033

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 37
    const v0, 0x7f0b00b2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amf;

    iput-object v0, p0, Lo/ahb;->bEk:Lo/amf;

    .line 38
    new-instance v4, Lo/ahc;

    invoke-direct {v4, p0, p1}, Lo/ahc;-><init>(Lo/ahb;Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/LinearLayoutManager;->ᵎ(Z)V

    .line 45
    iget-object v0, p0, Lo/ahb;->bEk:Lo/amf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/amf;->setAllowScroll(Z)V

    .line 46
    iget-object v0, p0, Lo/ahb;->bEk:Lo/amf;

    new-instance v1, Lo/ags;

    invoke-direct {v1}, Lo/ags;-><init>()V

    invoke-virtual {v0, v1}, Lo/amf;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ˎ;)V

    .line 47
    iget-object v0, p0, Lo/ahb;->bEk:Lo/amf;

    invoke-virtual {v0, v4}, Lo/amf;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    .line 48
    iget-object v0, p0, Lo/ahb;->bEk:Lo/amf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/amf;->setHasFixedSize(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public setChatAdapter(Lo/agp;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/ahb;->bEk:Lo/amf;

    invoke-virtual {v0, p1}, Lo/amf;->setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 53
    iput-object p1, p0, Lo/ahb;->bEl:Lo/agp;

    .line 54
    return-void
.end method

.method public ˍ(Lo/ant;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lo/ahb;->bEl:Lo/agp;

    invoke-virtual {v0, p1}, Lo/agp;->ʼ(Lo/ant;)V

    .line 59
    iget-object v0, p0, Lo/ahb;->bEl:Lo/agp;

    invoke-virtual {v0}, Lo/agp;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lo/ahb;->ϟ(I)V

    .line 60
    return-void
.end method

.method public ϟ(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lo/ahb;->bEk:Lo/amf;

    invoke-virtual {v0, p1}, Lo/amf;->ﹴ(I)V

    .line 64
    return-void
.end method
