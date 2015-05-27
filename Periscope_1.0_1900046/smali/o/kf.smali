.class abstract Lo/kf;
.super Lo/lk;
.source ""


# instance fields
.field protected volatile NI:I

.field protected volatile NJ:I

.field protected volatile NK:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 253
    invoke-direct {p0, p1, p2, p3}, Lo/lk;-><init>(Ljava/lang/String;II)V

    .line 247
    const/4 v0, 0x5

    iput v0, p0, Lo/kf;->NI:I

    .line 248
    const/16 v0, 0x1388

    iput v0, p0, Lo/kf;->NJ:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lo/kf;->NK:I

    .line 254
    return-void
.end method


# virtual methods
.method public al()Lo/lu;
    .locals 8

    .line 257
    new-instance v0, Lo/ln;

    iget-object v1, p0, Lo/kf;->Pz:Ljava/util/Vector;

    iget v2, p0, Lo/kf;->NS:I

    iget v3, p0, Lo/kf;->NR:I

    iget v4, p0, Lo/kf;->NI:I

    iget v5, p0, Lo/kf;->NJ:I

    iget v6, p0, Lo/kf;->NK:I

    iget-object v7, p0, Lo/kf;->NU:Ljava/util/Hashtable;

    invoke-direct/range {v0 .. v7}, Lo/ln;-><init>(Ljava/util/Vector;IIIIILjava/util/Hashtable;)V

    return-object v0
.end method

.method public ˊ(Lo/kn;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lo/kf;->Pz:Ljava/util/Vector;

    monitor-enter v0

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lo/kf;->ar()V

    .line 294
    invoke-super {p0, p1}, Lo/lk;->ˊ(Lo/kn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 296
    :goto_0
    return-void
.end method
