.class Lo/ahj;
.super Landroid/support/v7/widget/RecyclerView$ˑ;
.source ""


# instance fields
.field public final bEK:Landroid/view/View;

.field public final bEL:Landroid/widget/TextView;

.field public bnh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˑ;-><init>(Landroid/view/View;)V

    .line 17
    const v0, 0x7f0b0075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ahj;->bEK:Landroid/view/View;

    .line 18
    const v0, 0x7f0b00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ahj;->bEL:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method public Ґ(I)V
    .locals 5

    .line 22
    if-lez p1, :cond_0

    .line 23
    iget-object v0, p0, Lo/ahj;->bEL:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ahj;->bEL:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lo/ahj;->bEK:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lo/ahj;->bEK:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :goto_0
    return-void
.end method
