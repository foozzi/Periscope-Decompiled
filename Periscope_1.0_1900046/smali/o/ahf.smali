.class public Lo/ahf;
.super Lo/agy;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final bDC:Lo/afn;

.field public bEq:Lo/agr;

.field public final bEs:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/afn;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lo/agy;-><init>(Landroid/view/View;)V

    .line 19
    const v0, 0x7f0b00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahf;->bEs:Landroid/widget/TextView;

    .line 20
    iput-object p2, p0, Lo/ahf;->bDC:Lo/afn;

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 26
    iget-object v0, p0, Lo/ahf;->bEq:Lo/agr;

    if-nez v0, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lo/ahf;->bEq:Lo/agr;

    invoke-virtual {v0}, Lo/agr;->zy()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 30
    iget-object v0, p0, Lo/ahf;->bDC:Lo/afn;

    iget-object v1, p0, Lo/ahf;->bEq:Lo/agr;

    iget-object v1, v1, Lo/agr;->bxr:Lo/ant;

    new-instance v2, Lo/vk;

    sget-object v3, Lo/vi$if;->bmj:Lo/vi$if;

    invoke-direct {v2, v3}, Lo/vk;-><init>(Lo/vi$if;)V

    invoke-interface {v0, v1, v2}, Lo/afn;->ˋ(Lo/ant;Lo/vk;)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lo/ahf;->bDC:Lo/afn;

    invoke-interface {v0}, Lo/afn;->onCancel()V

    .line 34
    :goto_0
    return-void
.end method
