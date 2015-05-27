.class Lo/aet$ˋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02cb"
.end annotation


# instance fields
.field public bBY:[B

.field public boi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    return-void
.end method


# virtual methods
.method public upload()V
    .locals 2

    .line 1295
    iget-object v0, p0, Lo/aet$ˋ;->boi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aet$ˋ;->bBY:[B

    if-nez v0, :cond_1

    .line 1296
    :cond_0
    return-void

    .line 1298
    :cond_1
    invoke-static {}, Lo/vf;->tM()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lo/afh;

    invoke-direct {v1, p0}, Lo/afh;-><init>(Lo/aet$ˋ;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1319
    return-void
.end method
