.class Lo/ᘣ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒴ$ˏ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dk:Lo/ᖨ;


# direct methods
.method constructor <init>(Lo/ᖨ;)V
    .locals 0

    iput-object p1, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ᐦ(I)V
    .locals 6

    iget-object v0, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ʽ(Lo/ᖨ;)I

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Internal error: step mismatch. Expected: %d, Actual: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-static {v3}, Lo/ᖨ;->ʽ(Lo/ᖨ;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lo/ᖨ;->ˊ(Lo/ᖨ;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ͺ(Lo/ᖨ;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˎ(Lo/ᖨ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v0, p0, Lo/ᘣ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    :goto_0
    return-void
.end method


# virtual methods
.method public য()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ᘣ;->ᐦ(I)V

    return-void
.end method

.method public র()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ᘣ;->ᐦ(I)V

    return-void
.end method
