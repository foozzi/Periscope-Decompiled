.class public Lo/ahe;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private bEr:Lo/ahl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lo/ahe;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lo/ahe;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lo/ahe;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 34
    new-instance v0, Lo/ahp;

    invoke-virtual {p0}, Lo/ahe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ahp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/ahe;->bEr:Lo/ahl;

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lo/ahm;

    invoke-virtual {p0}, Lo/ahe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ahm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/ahe;->bEr:Lo/ahl;

    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public Ѓ(I)V
    .locals 2

    .line 41
    new-instance v1, Lo/aht;

    invoke-virtual {p0}, Lo/ahe;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lo/aht;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v1, p1}, Lo/aht;->setColor(I)V

    .line 43
    iget-object v0, p0, Lo/ahe;->bEr:Lo/ahl;

    invoke-virtual {v0, v1, p0}, Lo/ahl;->ˊ(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 44
    return-void
.end method
