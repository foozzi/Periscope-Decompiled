.class public final Lo/ס;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ס$ˊ;,
        Lo/ס$if;,
        Lo/ס$ˋ;,
        Lo/ס$ˎ;
    }
.end annotation


# instance fields
.field private final AJ:Ljava/util/concurrent/ExecutorService;

.field private AK:Lo/ס$ˊ;

.field private AL:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lo/ผ;->ᐣ(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/ס;->AJ:Ljava/util/concurrent/ExecutorService;

    .line 115
    return-void
.end method

.method static synthetic ˊ(Lo/ס;Lo/ס$ˊ;)Lo/ס$ˊ;
    .locals 0

    .line 33
    iput-object p1, p0, Lo/ס;->AK:Lo/ס$ˊ;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ס;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lo/ס;->AL:Z

    return p1
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lo/ס;->AL:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lo/ס;->ƫ()V

    .line 206
    :cond_0
    iget-object v0, p0, Lo/ס;->AJ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 207
    return-void
.end method

.method public ƨ()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lo/ס;->AL:Z

    return v0
.end method

.method public ƫ()V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lo/ס;->AL:Z

    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 194
    iget-object v0, p0, Lo/ס;->AK:Lo/ס$ˊ;

    invoke-virtual {v0}, Lo/ס$ˊ;->quit()V

    .line 195
    return-void
.end method

.method public ˊ(Landroid/os/Looper;Lo/ס$ˋ;Lo/ס$if;)V
    .locals 1

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lo/ס;->ˊ(Landroid/os/Looper;Lo/ס$ˋ;Lo/ס$if;I)V

    .line 158
    return-void
.end method

.method public ˊ(Landroid/os/Looper;Lo/ס$ˋ;Lo/ס$if;I)V
    .locals 6

    .line 172
    iget-boolean v0, p0, Lo/ס;->AL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ס;->AL:Z

    .line 174
    new-instance v0, Lo/ס$ˊ;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lo/ס$ˊ;-><init>(Lo/ס;Landroid/os/Looper;Lo/ס$ˋ;Lo/ס$if;I)V

    iput-object v0, p0, Lo/ס;->AK:Lo/ס$ˊ;

    .line 175
    iget-object v0, p0, Lo/ס;->AJ:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lo/ס;->AK:Lo/ס$ˊ;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 176
    return-void
.end method

.method public ˊ(Lo/ס$ˋ;Lo/ס$if;)V
    .locals 2

    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 128
    invoke-virtual {p0, v1, p1, p2}, Lo/ס;->ˊ(Landroid/os/Looper;Lo/ס$ˋ;Lo/ס$if;)V

    .line 129
    return-void
.end method
