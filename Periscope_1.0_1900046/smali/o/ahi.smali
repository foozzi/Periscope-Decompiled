.class Lo/ahi;
.super Lo/ahj;
.source ""


# instance fields
.field public final bEA:Landroid/widget/TextView;

.field public final bEB:Landroid/widget/ImageView;

.field public final bEC:Landroid/widget/TextView;

.field public final bED:Landroid/widget/TextView;

.field public final bEE:Lo/alm;

.field public final bEF:Landroid/widget/ImageView;

.field public final bEG:Landroid/widget/TextView;

.field public final bEH:Landroid/view/View;

.field public final bEI:Landroid/view/View;

.field public final bEJ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 23
    invoke-direct {p0, p1}, Lo/ahj;-><init>(Landroid/view/View;)V

    .line 24
    const v0, 0x7f0b0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahi;->bEA:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ahi;->bEB:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0b0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahi;->bEC:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0b0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahi;->bED:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0b0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alm;

    iput-object v0, p0, Lo/ahi;->bEE:Lo/alm;

    .line 29
    const v0, 0x7f0b0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ahi;->bEF:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0b0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahi;->bEG:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0b0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ahi;->bEH:Landroid/view/View;

    .line 32
    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ahi;->bEI:Landroid/view/View;

    .line 33
    const v0, 0x7f0b006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahi;->bEJ:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lo/ahi;->bEE:Lo/alm;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 37
    iget-object v0, p0, Lo/ahi;->bEE:Lo/alm;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lo/alm;->setCornerRadius([F)V

    .line 39
    :cond_0
    return-void
.end method
