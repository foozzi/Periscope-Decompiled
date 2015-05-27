.class Lo/ahk;
.super Lo/ahj;
.source ""


# instance fields
.field public final bEA:Landroid/widget/TextView;

.field public final bEB:Landroid/widget/ImageView;

.field public final bED:Landroid/widget/TextView;

.field public final bEM:Landroid/widget/TextView;

.field public final bEN:Lo/alm;

.field public final bEO:Lo/alm;

.field public final bEP:Landroid/view/View;

.field public final bEQ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 21
    invoke-direct {p0, p1}, Lo/ahj;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f0b0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahk;->bEA:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ahk;->bEB:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0b0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahk;->bED:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alm;

    iput-object v0, p0, Lo/ahk;->bEN:Lo/alm;

    .line 27
    const v0, 0x7f0b0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ahk;->bEP:Landroid/view/View;

    .line 28
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahk;->bEM:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alm;

    iput-object v0, p0, Lo/ahk;->bEO:Lo/alm;

    .line 30
    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahk;->bEQ:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lo/ahk;->bEO:Lo/alm;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 34
    iget-object v0, p0, Lo/ahk;->bEO:Lo/alm;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lo/alm;->setCornerRadius([F)V

    .line 36
    :cond_0
    return-void
.end method
