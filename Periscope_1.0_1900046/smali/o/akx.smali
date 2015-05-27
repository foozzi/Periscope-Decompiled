.class public Lo/akx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/akx$if;
    }
.end annotation


# static fields
.field private static final bKR:Lo/akx;


# instance fields
.field private bKS:J

.field private bKT:Lo/akx$if;

.field private bKU:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/akx;

    invoke-direct {v0}, Lo/akx;-><init>()V

    sput-object v0, Lo/akx;->bKR:Lo/akx;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akx;->bKS:J

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akx;->bKU:J

    .line 29
    invoke-virtual {p0}, Lo/akx;->Bn()V

    .line 30
    return-void
.end method

.method public static Bl()Lo/akx;
    .locals 1

    .line 34
    sget-object v0, Lo/akx;->bKR:Lo/akx;

    return-object v0
.end method

.method static synthetic ˊ(Lo/akx;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lo/akx;->bKU:J

    return-wide p1
.end method


# virtual methods
.method protected declared-synchronized Bm()J
    .locals 3

    monitor-enter p0

    .line 39
    :try_start_0
    iget-wide v0, p0, Lo/akx;->bKS:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public Bn()V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/akx;->bKT:Lo/akx$if;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/akx;->bKT:Lo/akx$if;

    iget-boolean v0, v0, Lo/akx$if;->bKV:Z

    if-nez v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Lo/akx$if;

    invoke-direct {v0, p0}, Lo/akx$if;-><init>(Lo/akx;)V

    iput-object v0, p0, Lo/akx;->bKT:Lo/akx$if;

    .line 53
    :cond_1
    return-void
.end method

.method public getTime()J
    .locals 8

    .line 57
    invoke-virtual {p0}, Lo/akx;->Bm()J

    move-result-wide v4

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 59
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lo/akx;->bKU:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lo/akx;->bKU:J

    sub-long v0, v6, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 61
    :cond_0
    const-string v0, "RTMP"

    const-string v1, "Requesting clock update"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lo/akx;->Bn()V

    .line 64
    :cond_1
    add-long v0, v6, v4

    return-wide v0
.end method

.method protected declared-synchronized ᐢ(J)V
    .locals 0

    monitor-enter p0

    .line 44
    :try_start_0
    iput-wide p1, p0, Lo/akx;->bKS:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
