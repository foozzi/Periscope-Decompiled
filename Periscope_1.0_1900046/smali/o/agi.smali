.class public Lo/agi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/adw$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/view/View;FIIII)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009a

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˎ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aei;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/aei;->setTitleAlpha(F)V

    .line 241
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˏ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 242
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐝ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/ahe;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lo/ahe;->setAlpha(F)V

    .line 243
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʻ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/ahb;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lo/ahb;->setAlpha(F)V

    .line 245
    :cond_0
    return-void
.end method

.method public ˍ(Landroid/view/View;I)V
    .locals 0

    .line 235
    return-void
.end method

.method public ৲(Landroid/view/View;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʼ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 253
    :sswitch_0
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʽ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    move-result-object v0

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ͺ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/xh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʾ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ͺ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/xh;

    move-result-object v1

    iget-object v1, v1, Lo/xh;->nD:Ljava/lang/String;

    iget-object v2, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ι(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/vn;->ˮ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʿ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˉ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/yz;

    move-result-object v0

    iget-object v1, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˈ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/vm;

    move-result-object v1

    iget-object v1, v1, Lo/vm;->bnm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/yz;->ᵡ(Ljava/lang/String;)V

    .line 261
    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b009a -> :sswitch_0
    .end sparse-switch
.end method

.method public ᐢ(Landroid/view/View;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 269
    :sswitch_0
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʽ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    move-result-object v0

    iget-boolean v0, v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ͺ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/xh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ͺ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/xh;

    move-result-object v0

    iget-boolean v0, v0, Lo/xh;->boT:Z

    if-nez v0, :cond_1

    .line 271
    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aek;

    move-result-object v0

    invoke-virtual {v0}, Lo/aek;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˌ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    .line 277
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Z)V

    .line 278
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˍ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aek;

    move-result-object v0

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Z)V

    .line 281
    iget-object v0, p0, Lo/agi;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˑ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    .line 286
    :cond_3
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b009a -> :sswitch_0
    .end sparse-switch
.end method
