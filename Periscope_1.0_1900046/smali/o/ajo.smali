.class public Lo/ajo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/amx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ajo$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/amx<Lo/ajp;Ltv/periscope/android/api/PsUser;>;"
    }
.end annotation


# instance fields
.field private final bHA:Lo/zo;


# direct methods
.method public constructor <init>(Lo/zo;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/ajo;->bHA:Lo/zo;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Ljava/lang/Object;I)V
    .locals 2

    .line 19
    move-object v0, p1

    check-cast v0, Lo/ajp;

    move-object v1, p2

    check-cast v1, Ltv/periscope/android/api/PsUser;

    invoke-virtual {p0, v0, v1, p3}, Lo/ajo;->ˊ(Lo/ajp;Ltv/periscope/android/api/PsUser;I)V

    return-void
.end method

.method public ˊ(Lo/ajp;Ltv/periscope/android/api/PsUser;I)V
    .locals 8

    .line 29
    iget-object v0, p1, Lo/ajp;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 31
    iput-object p2, p1, Lo/ajp;->boA:Ltv/periscope/android/api/PsUser;

    .line 32
    iget-object v0, p1, Lo/ajp;->bHD:Landroid/widget/TextView;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p2, Ltv/periscope/android/api/PsUser;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p1, Lo/ajp;->bHF:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p1, Lo/ajp;->bHF:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    iget-object v0, p1, Lo/ajp;->bHF:Landroid/widget/TextView;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_0
    iget-boolean v0, p2, Ltv/periscope/android/api/PsUser;->bpI:Z

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p1, Lo/ajp;->bHH:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, p1, Lo/ajp;->bHH:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :goto_1
    iget-object v0, p0, Lo/ajo;->bHA:Lo/zo;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zo;->Ị(Ljava/lang/String;)Lo/aah;

    move-result-object v6

    .line 46
    if-nez v6, :cond_2

    .line 47
    iget-object v0, p1, Lo/ajp;->bHE:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 49
    :cond_2
    sget-object v0, Lo/ajo$1;->bsG:[I

    invoke-virtual {v6}, Lo/aah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 52
    :pswitch_0
    iget-object v0, p1, Lo/ajp;->bHC:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p1, Lo/ajp;->bHE:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p2, Ltv/periscope/android/api/PsUser;->bpB:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v5, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f060082

    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    goto :goto_3

    .line 58
    :pswitch_1
    iget-object v0, p1, Lo/ajp;->bHC:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p1, Lo/ajp;->bHE:Landroid/widget/TextView;

    const v1, 0x7f060085

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    goto :goto_3

    .line 64
    :goto_2
    :pswitch_2
    iget-object v0, p1, Lo/ajp;->bHC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p1, Lo/ajp;->bHE:Landroid/widget/TextView;

    invoke-virtual {p2}, Ltv/periscope/android/api/PsUser;->uk()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-static {v5, v1, v2, v3}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_3
    iget-object v0, p1, Lo/ajp;->bHG:Lo/alx;

    invoke-virtual {p0, p2}, Lo/ajo;->ˎ(Ltv/periscope/android/api/PsUser;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/alx;->setChecked(Z)V

    .line 73
    invoke-virtual {p2}, Ltv/periscope/android/api/PsUser;->uj()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-static {v7}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p1, Lo/ajp;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v0, v7}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lo/ڏ;->ﹷ(I)Lo/ڏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ڏ;->ץ()Lo/ڏ;

    move-result-object v0

    iget-object v1, p1, Lo/ajp;->bHB:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    goto :goto_4

    .line 82
    :cond_3
    iget-object v0, p1, Lo/ajp;->bHB:Landroid/widget/ImageView;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v0, v1, v2}, Lo/akl;->ˊ(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 84
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ˎ(Ltv/periscope/android/api/PsUser;)Z
    .locals 1

    .line 87
    iget-boolean v0, p1, Ltv/periscope/android/api/PsUser;->bpE:Z

    return v0
.end method
