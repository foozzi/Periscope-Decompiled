.class public Lo/yq$aux;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abl$ͺ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "aux"
.end annotation


# instance fields
.field final synthetic bqL:Lo/yq;


# direct methods
.method public constructor <init>(Lo/yq;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lo/yq$aux;->bqL:Lo/yq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    return-void
.end method


# virtual methods
.method public uG()V
    .locals 3

    .line 769
    iget-object v0, p0, Lo/yq$aux;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ᐨ(Lo/yq;)Lo/abq;

    move-result-object v0

    iget-object v1, p0, Lo/yq$aux;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ʽ(Lo/yq;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/abq;->ᑦ(Z)V

    .line 770
    iget-object v0, p0, Lo/yq$aux;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ᐨ(Lo/yq;)Lo/abq;

    move-result-object v0

    iget-object v1, p0, Lo/yq$aux;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abq;->ˊ(Lo/abn;)V

    .line 771
    return-void
.end method

.method public ˊ(Landroid/opengl/EGLConfig;)V
    .locals 2

    .line 754
    iget-object v0, p0, Lo/yq$aux;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ι(Lo/yq;)Lo/abl;

    move-result-object v0

    new-instance v1, Lo/yw;

    invoke-direct {v1, p0}, Lo/yw;-><init>(Lo/yq$aux;)V

    invoke-virtual {v0, v1}, Lo/abl;->post(Ljava/lang/Runnable;)Z

    .line 760
    return-void
.end method

.method public ﹷ(II)V
    .locals 0

    .line 765
    return-void
.end method
