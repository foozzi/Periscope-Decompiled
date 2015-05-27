.class Lo/abw$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field public final bxe:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<Lo/ant;>;"
        }
    .end annotation
.end field

.field public final bxf:Lo/anu$ˊ;

.field private bxg:J


# direct methods
.method public constructor <init>(Lo/anu$ˊ;)V
    .locals 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lo/abv$if;

    invoke-direct {v1}, Lo/abv$if;-><init>()V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lo/abw$if;->bxe:Ljava/util/concurrent/BlockingQueue;

    .line 202
    iput-object p1, p0, Lo/abw$if;->bxf:Lo/anu$ˊ;

    .line 203
    return-void
.end method

.method private wD()J
    .locals 4

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/abw$if;->bxg:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public ready()Z
    .locals 6

    .line 206
    iget-object v0, p0, Lo/abw$if;->bxf:Lo/anu$ˊ;

    iget-wide v0, v0, Lo/anu$ˊ;->WC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_0
    invoke-direct {p0}, Lo/abw$if;->wD()J

    move-result-wide v4

    .line 210
    iget-object v0, p0, Lo/abw$if;->bxf:Lo/anu$ˊ;

    iget-wide v0, v0, Lo/anu$ˊ;->WC:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public wE()J
    .locals 4

    .line 218
    iget-object v0, p0, Lo/abw$if;->bxf:Lo/anu$ˊ;

    iget-wide v0, v0, Lo/anu$ˊ;->WC:J

    invoke-direct {p0}, Lo/abw$if;->wD()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public wF()J
    .locals 2

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/abw$if;->bxg:J

    .line 223
    iget-object v0, p0, Lo/abw$if;->bxf:Lo/anu$ˊ;

    iget-wide v0, v0, Lo/anu$ˊ;->WC:J

    return-wide v0
.end method
