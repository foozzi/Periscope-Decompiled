.class Lo/afa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/adw$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lo/afa;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/view/View;FIIII)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0089

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˏ(Lo/aet;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᐝ(Lo/aet;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʻ(Lo/aet;)Lo/ahe;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lo/ahe;->setAlpha(F)V

    .line 237
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʼ(Lo/aet;)Lo/ahb;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lo/ahb;->setAlpha(F)V

    .line 239
    :goto_0
    return-void
.end method

.method public ˍ(Landroid/view/View;I)V
    .locals 2

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0089

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 226
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˎ(Lo/aet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v1}, Lo/aet;->ˋ(Lo/aet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    :cond_0
    return-void
.end method

.method public ৲(Landroid/view/View;)V
    .locals 3

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 244
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 247
    :sswitch_0
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʽ(Lo/aet;)V

    .line 248
    const v0, 0x7f0b009a

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ͺ(Lo/aet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʾ(Lo/aet;)Lo/yz;

    move-result-object v0

    iget-object v1, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v1}, Lo/aet;->ι(Lo/aet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/yz;->ᵡ(Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b009a -> :sswitch_0
        0x7f0b009d -> :sswitch_0
    .end sparse-switch
.end method

.method public ᐢ(Landroid/view/View;)V
    .locals 1

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 259
    :sswitch_0
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʿ(Lo/aet;)V

    .line 260
    goto :goto_0

    .line 264
    :sswitch_1
    iget-object v0, p0, Lo/afa;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˊ(Lo/aet;)V

    .line 268
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_0
        0x7f0b009a -> :sswitch_1
        0x7f0b009d -> :sswitch_1
    .end sparse-switch
.end method
