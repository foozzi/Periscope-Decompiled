.class public Lo/alf;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bAd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/ale;>;"
        }
    .end annotation
.end field

.field private bLI:Landroid/widget/TextView;

.field private bLJ:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/alf;->bAd:Ljava/util/List;

    .line 26
    invoke-direct {p0, p1}, Lo/alf;->ˊ(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/alf;->bAd:Ljava/util/List;

    .line 31
    invoke-direct {p0, p1}, Lo/alf;->ˊ(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/alf;->bAd:Ljava/util/List;

    .line 36
    invoke-direct {p0, p1}, Lo/alf;->ˊ(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private Bv()V
    .locals 8

    .line 66
    iget-object v0, p0, Lo/alf;->bLJ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 67
    iget-object v0, p0, Lo/alf;->bAd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 68
    if-ge v2, v3, :cond_0

    .line 70
    iget-object v0, p0, Lo/alf;->bLJ:Landroid/view/ViewGroup;

    sub-int v1, v3, v2

    invoke-direct {p0, v0, v1}, Lo/alf;->ͺ(Landroid/view/ViewGroup;I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lo/alf;->bLJ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 74
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 75
    iget-object v0, p0, Lo/alf;->bLJ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 76
    if-ge v4, v3, :cond_1

    .line 78
    iget-object v0, p0, Lo/alf;->bAd:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ale;

    move-object v6, v0

    .line 79
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/alj;

    move-object v7, v0

    .line 81
    invoke-interface {v6}, Lo/ale;->xh()Lo/ali;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v4}, Lo/ali;->ˊ(Lo/alj;Lo/ale;I)V

    .line 82
    goto :goto_1

    .line 84
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_2
    return-void
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lo/alf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/alf;->bLI:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lo/alf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/alf;->bLJ:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p0, p0}, Lo/alf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method private ͺ(Landroid/view/ViewGroup;I)V
    .locals 7

    .line 90
    invoke-virtual {p0}, Lo/alf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 91
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_0

    .line 92
    iget-object v0, p0, Lo/alf;->bLJ:Landroid/view/ViewGroup;

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 93
    new-instance v6, Lo/alj;

    invoke-direct {v6, v5}, Lo/alj;-><init>(Landroid/view/View;)V

    .line 94
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<+Lo/ale;>;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lo/alf;->bAd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lo/alf;->bAd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    :cond_0
    invoke-direct {p0}, Lo/alf;->Bv()V

    .line 63
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {p1}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lo/alf;->bLI:Landroid/widget/TextView;

    invoke-static {p1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lo/alf;->bLI:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lo/alf;->bLI:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_0
    return-void
.end method
