.class public Lo/akb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/amx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/amx<Lo/akc;Ltv/periscope/android/api/PsUser;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Ljava/lang/Object;I)V
    .locals 2

    .line 15
    move-object v0, p1

    check-cast v0, Lo/akc;

    move-object v1, p2

    check-cast v1, Ltv/periscope/android/api/PsUser;

    invoke-virtual {p0, v0, v1, p3}, Lo/akb;->ˊ(Lo/akc;Ltv/periscope/android/api/PsUser;I)V

    return-void
.end method

.method public ˊ(Lo/akc;Ltv/periscope/android/api/PsUser;I)V
    .locals 4

    .line 19
    iput-object p2, p1, Lo/akc;->boA:Ltv/periscope/android/api/PsUser;

    .line 20
    iget-object v0, p1, Lo/akc;->bHD:Landroid/widget/TextView;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v1

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Ltv/periscope/android/api/PsUser;->bpF:Z

    if-nez v0, :cond_0

    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/aad;->רּ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    iget-object v0, p1, Lo/akc;->bIf:Lo/alx;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/alx;->setVisibility(I)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p1, Lo/akc;->bIf:Lo/alx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/alx;->setVisibility(I)V

    .line 29
    :goto_0
    iget-object v0, p1, Lo/akc;->bIf:Lo/alx;

    invoke-virtual {p0, p2}, Lo/akb;->ˎ(Ltv/periscope/android/api/PsUser;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/alx;->setChecked(Z)V

    .line 31
    invoke-virtual {p2}, Ltv/periscope/android/api/PsUser;->uj()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v3}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p1, Lo/akc;->bHB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lo/ڏ;->ﹷ(I)Lo/ڏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ڏ;->ץ()Lo/ڏ;

    move-result-object v0

    iget-object v1, p1, Lo/akc;->bHB:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    goto :goto_1

    .line 40
    :cond_2
    iget-object v0, p1, Lo/akc;->bHB:Landroid/widget/ImageView;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v0, v1, v2}, Lo/akl;->ˊ(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 42
    :goto_1
    return-void
.end method

.method protected ˎ(Ltv/periscope/android/api/PsUser;)Z
    .locals 1

    .line 45
    iget-boolean v0, p1, Ltv/periscope/android/api/PsUser;->bpE:Z

    return v0
.end method
