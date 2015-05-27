.class public abstract Lo/qz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/qz$1;,
        Lo/qz$if;,
        Lo/qz$ˏ;,
        Lo/qz$ˊ;,
        Lo/qz$ˎ;,
        Lo/qz$ˋ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:Ljava/lang/Object;Progress:Ljava/lang/Object;Result:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final WD:I

.field private static final WE:I

.field private static final WF:I

.field private static final WG:Ljava/util/concurrent/ThreadFactory;

.field private static final WH:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
        }
    .end annotation
.end field

.field private static final WI:Lo/qz$ˊ;

.field private static volatile WJ:Ljava/util/concurrent/Executor;


# instance fields
.field private final WK:Lo/qz$ˏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/qz$\u02cf<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final WL:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<TResult;>;"
        }
    .end annotation
.end field

.field private volatile WM:Lo/qz$ˎ;

.field private final WN:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final WO:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 186
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lo/qz;->WD:I

    .line 187
    sget v0, Lo/qz;->WD:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/qz;->WE:I

    .line 188
    sget v0, Lo/qz;->WD:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/qz;->WF:I

    .line 191
    new-instance v0, Lo/ra;

    invoke-direct {v0}, Lo/ra;-><init>()V

    sput-object v0, Lo/qz;->WG:Ljava/util/concurrent/ThreadFactory;

    .line 199
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lo/qz;->WH:Ljava/util/concurrent/BlockingQueue;

    .line 205
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lo/qz;->WE:I

    sget v2, Lo/qz;->WF:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lo/qz;->WH:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lo/qz;->WG:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lo/qz;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 213
    new-instance v0, Lo/qz$ˋ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/qz$ˋ;-><init>(Lo/ra;)V

    sput-object v0, Lo/qz;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 218
    new-instance v0, Lo/qz$ˊ;

    invoke-direct {v0}, Lo/qz$ˊ;-><init>()V

    sput-object v0, Lo/qz;->WI:Lo/qz$ˊ;

    .line 220
    sget-object v0, Lo/qz;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lo/qz;->WJ:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    sget-object v0, Lo/qz$ˎ;->WX:Lo/qz$ˎ;

    iput-object v0, p0, Lo/qz;->WM:Lo/qz$ˎ;

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/qz;->WN:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/qz;->WO:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    new-instance v0, Lo/rb;

    invoke-direct {v0, p0}, Lo/rb;-><init>(Lo/qz;)V

    iput-object v0, p0, Lo/qz;->WK:Lo/qz$ˏ;

    .line 298
    new-instance v0, Lo/rc;

    iget-object v1, p0, Lo/qz;->WK:Lo/qz$ˏ;

    invoke-direct {v0, p0, v1}, Lo/rc;-><init>(Lo/qz;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lo/qz;->WL:Ljava/util/concurrent/FutureTask;

    .line 313
    return-void
.end method

.method static synthetic ˊ(Lo/qz;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-direct {p0, p1}, Lo/qz;->เ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/qz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 183
    iget-object v0, p0, Lo/qz;->WO:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic ˋ(Lo/qz;Ljava/lang/Object;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lo/qz;->ۦ(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic ˎ(Lo/qz;Ljava/lang/Object;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lo/qz;->ٴ(Ljava/lang/Object;)V

    return-void
.end method

.method private ٴ(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lo/qz;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Lo/qz;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0, p1}, Lo/qz;->onPostExecute(Ljava/lang/Object;)V

    .line 641
    :goto_0
    sget-object v0, Lo/qz$ˎ;->WZ:Lo/qz$ˎ;

    iput-object v0, p0, Lo/qz;->WM:Lo/qz$ˎ;

    .line 642
    return-void
.end method

.method private ۦ(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lo/qz;->WO:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 317
    if-nez v1, :cond_0

    .line 318
    invoke-direct {p0, p1}, Lo/qz;->เ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    return-void
.end method

.method private เ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 324
    sget-object v0, Lo/qz;->WI:Lo/qz$ˊ;

    new-instance v1, Lo/qz$if;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lo/qz$if;-><init>(Lo/qz;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lo/qz$ˊ;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 326
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-object p1
.end method


# virtual methods
.method public final cO()Lo/qz$ˎ;
    .locals 1

    .line 336
    iget-object v0, p0, Lo/qz;->WM:Lo/qz$ˎ;

    return-object v0
.end method

.method public final cancel(Z)Z
    .locals 2

    .line 473
    iget-object v0, p0, Lo/qz;->WN:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, p0, Lo/qz;->WL:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final isCancelled()Z
    .locals 1

    .line 440
    iget-object v0, p0, Lo/qz;->WN:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .line 427
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lo/qz;->onCancelled()V

    .line 412
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 380
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 364
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 393
    return-void
.end method

.method public final varargs ˊ(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lo/qz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/concurrent/Executor;[TParams;)Lo/qz<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lo/qz;->WM:Lo/qz$ˎ;

    sget-object v1, Lo/qz$ˎ;->WX:Lo/qz$ˎ;

    if-eq v0, v1, :cond_0

    .line 580
    sget-object v0, Lo/qz$1;->WR:[I

    iget-object v1, p0, Lo/qz;->WM:Lo/qz$ˎ;

    invoke-virtual {v1}, Lo/qz$ˎ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 582
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    :goto_0
    sget-object v0, Lo/qz$ˎ;->WY:Lo/qz$ˎ;

    iput-object v0, p0, Lo/qz;->WM:Lo/qz$ˎ;

    .line 594
    invoke-virtual {p0}, Lo/qz;->onPreExecute()V

    .line 596
    iget-object v0, p0, Lo/qz;->WK:Lo/qz$ˏ;

    iput-object p2, v0, Lo/qz$ˏ;->Xb:[Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Lo/qz;->WL:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 599
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method
