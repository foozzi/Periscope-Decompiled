.class Lo/ᖿ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dk:Lo/ᖨ;

.field final synthetic Dm:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    iput-object p2, p0, Lo/ᖿ;->Dm:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    iget-object v1, p0, Lo/ᖿ;->Dm:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lo/ᖨ;->ˏ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᖨ;->ᐝ(Lo/ᖨ;Z)Z

    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˍ(Lo/ᖨ;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˎ;

    move-object v5, v0

    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˑ(Lo/ᖨ;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒰ$ˊ;

    move-object v6, v0

    invoke-interface {v6}, Lo/ᒰ$ˊ;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Lo/ᒰ$ˊ;->disconnect()V

    :cond_0
    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˈ(Lo/ᖨ;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˈ(Lo/ᖨ;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ᖨ;->ᐝ(Lo/ᖨ;Z)Z

    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ـ(Lo/ᖨ;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    iget-object v1, p0, Lo/ᖿ;->Dm:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lo/ᖨ;->ᐝ(Lo/ᖨ;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v7

    iget-object v0, p0, Lo/ᖿ;->Dk:Lo/ᖨ;

    invoke-static {v0}, Lo/ᖨ;->ˊ(Lo/ᖨ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    :goto_2
    return-void
.end method
