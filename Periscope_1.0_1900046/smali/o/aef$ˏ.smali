.class public Lo/aef$ˏ;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<Lo/aeh$\u02cf;>;"
    }
.end annotation


# instance fields
.field private final bzM:Landroid/widget/TextView;

.field private final bzR:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/ady;)V
    .locals 1

    .line 393
    invoke-direct {p0, p1, p2}, Lo/aef;-><init>(Landroid/view/View;Lo/ady;)V

    .line 394
    const v0, 0x7f0b0063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$ˏ;->bzM:Landroid/widget/TextView;

    .line 395
    const v0, 0x7f0b0062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$ˏ;->bzR:Landroid/widget/TextView;

    .line 396
    return-void
.end method

.method public static ᐝ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ˏ;
    .locals 4

    .line 387
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 389
    new-instance v0, Lo/aef$ˏ;

    invoke-direct {v0, v3, p2}, Lo/aef$ˏ;-><init>(Landroid/view/View;Lo/ady;)V

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/aeh$ˏ;)V
    .locals 8

    .line 400
    iget-object v0, p0, Lo/aef$ˏ;->bzM:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 401
    invoke-virtual {p1}, Lo/aeh$ˏ;->xE()Lo/anf;

    move-result-object v6

    .line 402
    sget-object v0, Lo/aef$1;->bzD:[I

    invoke-virtual {p1}, Lo/aeh$ˏ;->xC()Lo/aeh$ˏ$if;

    move-result-object v1

    invoke-virtual {v1}, Lo/aeh$ˏ$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 404
    :sswitch_0
    invoke-virtual {v6}, Lo/anf;->BS()I

    move-result v0

    invoke-virtual {v6}, Lo/anf;->BQ()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lo/aeh$ˏ;->xD()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 405
    iget-object v0, p0, Lo/aef$ˏ;->bzR:Landroid/widget/TextView;

    int-to-long v1, v7

    const/4 v3, 0x1

    invoke-static {v5, v1, v2, v3}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v6}, Lo/anf;->BQ()I

    move-result v0

    if-lez v0, :cond_0

    .line 407
    iget-object v0, p0, Lo/aef$ˏ;->bzM:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lo/anf;->BQ()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v5, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0600a3

    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lo/aef$ˏ;->bzM:Landroid/widget/TextView;

    const v1, 0x7f0600a2

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    goto :goto_0

    .line 415
    :sswitch_1
    invoke-virtual {v6}, Lo/anf;->BR()I

    move-result v0

    invoke-virtual {p1}, Lo/aeh$ˏ;->xD()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 416
    iget-object v0, p0, Lo/aef$ˏ;->bzR:Landroid/widget/TextView;

    int-to-long v1, v7

    const/4 v3, 0x1

    invoke-static {v5, v1, v2, v3}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lo/aef$ˏ;->bzM:Landroid/widget/TextView;

    const v1, 0x7f0600a2

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .line 421
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic ˊ(Lo/aeh;)V
    .locals 1

    .line 380
    move-object v0, p1

    check-cast v0, Lo/aeh$ˏ;

    invoke-virtual {p0, v0}, Lo/aef$ˏ;->ˊ(Lo/aeh$ˏ;)V

    return-void
.end method
