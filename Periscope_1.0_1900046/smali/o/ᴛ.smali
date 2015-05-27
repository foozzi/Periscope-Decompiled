.class Lo/ᴛ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    }
.end annotation


# instance fields
.field final synthetic fg:Lo/ᴐ;


# direct methods
.method constructor <init>(Lo/ᴐ;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lo/ᴛ;->fg:Lo/ᴐ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lo/ᴛ;->ᴻ()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public ᴻ()Ljava/lang/Void;
    .locals 4

    .line 162
    iget-object v2, p0, Lo/ᴛ;->fg:Lo/ᴐ;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v0, p0, Lo/ᴛ;->fg:Lo/ᴐ;

    invoke-static {v0}, Lo/ᴐ;->ˊ(Lo/ᴐ;)Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    monitor-exit v2

    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ᴛ;->fg:Lo/ᴐ;

    invoke-static {v0}, Lo/ᴐ;->ˋ(Lo/ᴐ;)V

    .line 167
    iget-object v0, p0, Lo/ᴛ;->fg:Lo/ᴐ;

    invoke-static {v0}, Lo/ᴐ;->ˎ(Lo/ᴐ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lo/ᴛ;->fg:Lo/ᴐ;

    invoke-static {v0}, Lo/ᴐ;->ˏ(Lo/ᴐ;)V

    .line 169
    iget-object v0, p0, Lo/ᴛ;->fg:Lo/ᴐ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᴐ;->ˊ(Lo/ᴐ;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 172
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
