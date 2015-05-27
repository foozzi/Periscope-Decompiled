.class Lo/yx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abh$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqW:Lo/yq$ᐝ;


# direct methods
.method constructor <init>(Lo/yq$ᐝ;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uB()V
    .locals 5

    .line 650
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v0

    invoke-virtual {v0}, Lo/abn;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v2, v2, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v2}, Lo/yq;->ˈ(Lo/yq;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 651
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˉ(Lo/yq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˑ(Lo/yq;)Lo/abq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/abq;->ᑦ(Z)V

    .line 653
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˑ(Lo/yq;)Lo/abq;

    move-result-object v0

    iget-object v1, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v1, v1, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abq;->ˊ(Lo/abn;)V

    .line 654
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ـ(Lo/yq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ᐧ(Lo/yq;)V

    .line 656
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/yq;->ˊ(Lo/yq;Z)Z

    goto :goto_0

    .line 659
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 660
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 662
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʼ(Lo/yq;)Lo/abh;

    move-result-object v0

    iget-object v1, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v1, v1, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v1

    invoke-virtual {v1}, Lo/abn;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v3, v3, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v3}, Lo/yq;->ˈ(Lo/yq;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lo/abh;->ʵ(J)V

    .line 663
    iget-object v0, p0, Lo/yx;->bqW:Lo/yq$ᐝ;

    iget-object v0, v0, Lo/yq$ᐝ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʼ(Lo/yq;)Lo/abh;

    move-result-object v0

    invoke-virtual {v0}, Lo/abh;->vU()V

    .line 665
    :cond_2
    return-void
.end method
