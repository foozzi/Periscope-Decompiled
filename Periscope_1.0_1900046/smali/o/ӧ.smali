.class public Lo/ӧ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʭ;


# instance fields
.field private final Ac:Lo/ʭ$if;

.field private final Ad:Lo/ڽ;

.field private final Ae:Lo/ৰ;

.field private Af:J

.field private Ag:J

.field private Ah:J

.field private Ai:I

.field private final qK:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/ӧ;-><init>(Landroid/os/Handler;Lo/ʭ$if;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lo/ʭ$if;)V
    .locals 1

    .line 48
    new-instance v0, Lo/ถ;

    invoke-direct {v0}, Lo/ถ;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lo/ӧ;-><init>(Landroid/os/Handler;Lo/ʭ$if;Lo/ڽ;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lo/ʭ$if;Lo/ڽ;)V
    .locals 1

    .line 52
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/ӧ;-><init>(Landroid/os/Handler;Lo/ʭ$if;Lo/ڽ;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lo/ʭ$if;Lo/ڽ;I)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/ӧ;->qK:Landroid/os/Handler;

    .line 62
    iput-object p2, p0, Lo/ӧ;->Ac:Lo/ʭ$if;

    .line 63
    iput-object p3, p0, Lo/ӧ;->Ad:Lo/ڽ;

    .line 64
    new-instance v0, Lo/ৰ;

    invoke-direct {v0, p4}, Lo/ৰ;-><init>(I)V

    iput-object v0, p0, Lo/ӧ;->Ae:Lo/ৰ;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/ӧ;->Ah:J

    .line 66
    return-void
.end method

.method static synthetic ˊ(Lo/ӧ;)Lo/ʭ$if;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/ӧ;->Ac:Lo/ʭ$if;

    return-object v0
.end method

.method private ˎ(IJJ)V
    .locals 8

    .line 107
    iget-object v0, p0, Lo/ӧ;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ӧ;->Ac:Lo/ʭ$if;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lo/ӧ;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ӭ;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lo/ӭ;-><init>(Lo/ӧ;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized ĉ()V
    .locals 3

    monitor-enter p0

    .line 75
    :try_start_0
    iget v0, p0, Lo/ӧ;->Ai:I

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lo/ӧ;->Ad:Lo/ڽ;

    invoke-interface {v0}, Lo/ڽ;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ӧ;->Ag:J

    .line 78
    :cond_0
    iget v0, p0, Lo/ӧ;->Ai:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ӧ;->Ai:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized č()V
    .locals 11

    monitor-enter p0

    .line 88
    :try_start_0
    iget v0, p0, Lo/ӧ;->Ai:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 89
    iget-object v0, p0, Lo/ӧ;->Ad:Lo/ڽ;

    invoke-interface {v0}, Lo/ڽ;->elapsedRealtime()J

    move-result-wide v6

    .line 90
    iget-wide v0, p0, Lo/ӧ;->Ag:J

    sub-long v0, v6, v0

    long-to-int v8, v0

    .line 91
    if-lez v8, :cond_2

    .line 92
    iget-wide v0, p0, Lo/ӧ;->Af:J

    const-wide/16 v2, 0x1f40

    mul-long/2addr v0, v2

    int-to-long v2, v8

    div-long/2addr v0, v2

    long-to-float v9, v0

    .line 93
    iget-object v0, p0, Lo/ӧ;->Ae:Lo/ৰ;

    iget-wide v1, p0, Lo/ӧ;->Af:J

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1, v9}, Lo/ৰ;->ˎ(IF)V

    .line 94
    iget-object v0, p0, Lo/ӧ;->Ae:Lo/ৰ;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lo/ৰ;->ﹳ(F)F

    move-result v10

    .line 95
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    float-to-long v0, v10

    :goto_1
    iput-wide v0, p0, Lo/ӧ;->Ah:J

    .line 97
    move-object v0, p0

    move v1, v8

    iget-wide v2, p0, Lo/ӧ;->Af:J

    iget-wide v4, p0, Lo/ӧ;->Ah:J

    invoke-direct/range {v0 .. v5}, Lo/ӧ;->ˎ(IJJ)V

    .line 99
    :cond_2
    iget v0, p0, Lo/ӧ;->Ai:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ӧ;->Ai:I

    .line 100
    iget v0, p0, Lo/ӧ;->Ai:I

    if-lez v0, :cond_3

    .line 101
    iput-wide v6, p0, Lo/ӧ;->Ag:J

    .line 103
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ӧ;->Af:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized ɨ(I)V
    .locals 4

    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lo/ӧ;->Af:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ӧ;->Af:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ﾗ()J
    .locals 3

    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lo/ӧ;->Ah:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
