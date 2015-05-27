.class final Lo/af;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒰ$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14b0$\u02cb<Lo/aq;Lo/ai;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ai;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/aq;
    .locals 8

    if-nez p4, :cond_0

    sget-object p4, Lo/ai;->GL:Lo/ai;

    :cond_0
    new-instance v0, Lo/aq;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lo/aq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ai;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public bridge synthetic ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Ljava/lang/Object;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/ᒰ$ˊ;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    check-cast v4, Lo/ai;

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/af;->ˊ(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ai;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;)Lo/aq;

    move-result-object v0

    return-object v0
.end method
