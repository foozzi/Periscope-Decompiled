.class Lo/ɬ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ɬ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic nN:Lo/ɬ;

.field private nT:Z


# direct methods
.method private constructor <init>(Lo/ɬ;)V
    .locals 2

    .line 1116
    iput-object p1, p0, Lo/ɬ$if;->nN:Lo/ɬ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ɬ$if;->nT:Z

    .line 1118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/ɬ$if;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lo/ɬ;Lo/ο;)V
    .locals 0

    .line 1116
    invoke-direct {p0, p1}, Lo/ɬ$if;-><init>(Lo/ɬ;)V

    return-void
.end method


# virtual methods
.method await()V
    .locals 2

    .line 1131
    :try_start_0
    iget-object v0, p0, Lo/ɬ$if;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    goto :goto_0

    .line 1132
    :catch_0
    move-exception v1

    .line 1135
    :goto_0
    return-void
.end method

.method ӵ()Z
    .locals 1

    .line 1126
    iget-boolean v0, p0, Lo/ɬ$if;->nT:Z

    return v0
.end method

.method ᐩ(Z)V
    .locals 1

    .line 1121
    iput-boolean p1, p0, Lo/ɬ$if;->nT:Z

    .line 1122
    iget-object v0, p0, Lo/ɬ$if;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1123
    return-void
.end method
