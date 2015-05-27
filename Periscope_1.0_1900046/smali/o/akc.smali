.class public Lo/akc;
.super Landroid/support/v7/widget/RecyclerView$ˑ;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final bHB:Landroid/widget/ImageView;

.field public final bHD:Landroid/widget/TextView;

.field private final bHJ:Lo/akd;

.field public final bIf:Lo/alx;

.field public boA:Ltv/periscope/android/api/PsUser;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/akd;I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˑ;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/akc;->bHB:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/akc;->bHD:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alx;

    iput-object v0, p0, Lo/akc;->bIf:Lo/alx;

    .line 26
    iget-object v0, p0, Lo/akc;->bIf:Lo/alx;

    invoke-virtual {v0, p0}, Lo/alx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object p2, p0, Lo/akc;->bHJ:Lo/akd;

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lo/akc;->boA:Ltv/periscope/android/api/PsUser;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lo/akc;->bIf:Lo/alx;

    if-ne p1, v0, :cond_1

    .line 37
    iget-object v0, p0, Lo/akc;->bIf:Lo/alx;

    invoke-virtual {v0}, Lo/alx;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    iget-object v0, p0, Lo/akc;->bHJ:Lo/akd;

    iget-object v1, p0, Lo/akc;->boA:Ltv/periscope/android/api/PsUser;

    invoke-interface {v0, v2, v1}, Lo/akd;->ˊ(ZLtv/periscope/android/api/PsUser;)V

    .line 39
    iget-object v0, p0, Lo/akc;->bIf:Lo/alx;

    invoke-virtual {v0, v2}, Lo/alx;->setChecked(Z)V

    .line 40
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/akc;->bB:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 41
    iget-object v0, p0, Lo/akc;->bHJ:Lo/akd;

    iget-object v1, p0, Lo/akc;->boA:Ltv/periscope/android/api/PsUser;

    invoke-interface {v0, p1, v1}, Lo/akd;->ˊ(Landroid/view/View;Ltv/periscope/android/api/PsUser;)V

    .line 44
    :cond_2
    :goto_1
    return-void
.end method
