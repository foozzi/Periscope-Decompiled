.class public final Lo/ﮣ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final na:Lo/ﮣ;


# instance fields
.field private final mZ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/ﮣ;

    invoke-direct {v0}, Lo/ﮣ;-><init>()V

    sput-object v0, Lo/ﮣ;->na:Lo/ﮣ;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Lo/ﾕ;->ᵘ(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lo/ﮣ;->mZ:Ljava/util/Queue;

    .line 28
    return-void
.end method

.method public static ῖ()Lo/ﮣ;
    .locals 1

    .line 25
    sget-object v0, Lo/ﮣ;->na:Lo/ﮣ;

    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 5

    .line 45
    iget-object v3, p0, Lo/ﮣ;->mZ:Ljava/util/Queue;

    monitor-enter v3

    .line 46
    :try_start_0
    iget-object v0, p0, Lo/ﮣ;->mZ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 47
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 48
    :goto_0
    if-nez v2, :cond_0

    .line 49
    const/high16 v0, 0x10000

    new-array v2, v0, [B

    .line 50
    const-string v0, "ByteArrayPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "ByteArrayPool"

    const-string v1, "Created temp bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-object v2
.end method

.method public ˏ([B)Z
    .locals 5

    .line 64
    array-length v0, p1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    const/4 v2, 0x0

    .line 69
    iget-object v3, p0, Lo/ﮣ;->mZ:Ljava/util/Queue;

    monitor-enter v3

    .line 70
    :try_start_0
    iget-object v0, p0, Lo/ﮣ;->mZ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 71
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lo/ﮣ;->mZ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 75
    :goto_0
    return v2
.end method
