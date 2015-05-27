.class Lo/yq$ᐝ;
.super Lo/yq$ˏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u141d"
.end annotation


# instance fields
.field final synthetic bqL:Lo/yq;


# direct methods
.method private constructor <init>(Lo/yq;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-direct {p0}, Lo/yq$ˏ;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/yq;Lo/yr;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lo/yq$ᐝ;-><init>(Lo/yq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 642
    iget-object v0, p0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 643
    invoke-virtual {p0}, Lo/yq$ᐝ;->uF()V

    .line 644
    :goto_0
    invoke-virtual {p0}, Lo/yq$ᐝ;->uE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v2

    .line 646
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/abn;->wv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʼ(Lo/yq;)Lo/abh;

    move-result-object v0

    new-instance v1, Lo/yx;

    invoke-direct {v1, p0}, Lo/yx;-><init>(Lo/yq$ᐝ;)V

    invoke-virtual {v0, v1}, Lo/abh;->ˊ(Lo/abh$ˋ;)Z

    .line 668
    :cond_0
    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 670
    return-void
.end method
