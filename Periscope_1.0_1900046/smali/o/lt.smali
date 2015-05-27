.class Lo/lt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private PM:Lo/lq;

.field private PN:Ljava/lang/Thread;

.field protected volatile PO:Z

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/lq;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lo/lt;->PM:Lo/lq;

    .line 60
    iput-object p1, p0, Lo/lt;->name:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method aL()V
    .locals 1

    .line 37
    iget-object v0, p0, Lo/lt;->PN:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method

.method aM()V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/lt;->PN:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 42
    return-void
.end method

.method public aN()Lo/lq;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/lt;->PM:Lo/lq;

    return-object v0
.end method

.method aO()V
    .locals 1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/lt;->PO:Z

    .line 65
    return-void
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/lt;->PN:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 69
    :cond_0
    iget-object v0, p0, Lo/lt;->PM:Lo/lq;

    invoke-virtual {v0}, Lo/lq;->run()V

    .line 71
    :try_start_0
    iget-object v0, p0, Lo/lt;->PM:Lo/lq;

    invoke-virtual {v0}, Lo/lq;->getInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 75
    :goto_0
    iget-boolean v0, p0, Lo/lt;->PO:Z

    if-eqz v0, :cond_0

    .line 76
    return-void
.end method

.method ˊ(Ljava/lang/Thread;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/lt;->PN:Ljava/lang/Thread;

    .line 34
    return-void
.end method

.method public ˊ(Lo/lq;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/lt;->PM:Lo/lq;

    .line 49
    return-void
.end method
