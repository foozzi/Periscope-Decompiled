.class public Lo/ahd;
.super Lo/agy;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bDC:Lo/afn;

.field public final bEn:Landroid/widget/TextView;

.field public final bEo:Landroid/widget/TextView;

.field public final bEp:Lo/alm;

.field public bEq:Lo/agr;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/afn;)V
    .locals 5

    .line 20
    invoke-direct {p0, p1}, Lo/agy;-><init>(Landroid/view/View;)V

    .line 21
    const v0, 0x7f0b00ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahd;->bEn:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0b00ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahd;->bEo:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alm;

    iput-object v0, p0, Lo/ahd;->bEp:Lo/alm;

    .line 24
    iput-object p2, p0, Lo/ahd;->bDC:Lo/afn;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 27
    iget-object v0, p0, Lo/ahd;->bEp:Lo/alm;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lo/alm;->setCornerRadius([F)V

    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lo/ahd;->bEq:Lo/agr;

    invoke-virtual {v0}, Lo/agr;->zy()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 35
    iget-object v0, p0, Lo/ahd;->bDC:Lo/afn;

    iget-object v1, p0, Lo/ahd;->bEq:Lo/agr;

    iget-object v1, v1, Lo/agr;->bxr:Lo/ant;

    new-instance v2, Lo/vk;

    sget-object v3, Lo/vi$if;->bmj:Lo/vi$if;

    invoke-direct {v2, v3}, Lo/vk;-><init>(Lo/vi$if;)V

    invoke-interface {v0, v1, v2}, Lo/afn;->ˋ(Lo/ant;Lo/vk;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lo/ahd;->bDC:Lo/afn;

    invoke-interface {v0}, Lo/afn;->onCancel()V

    .line 39
    :goto_0
    return-void
.end method
