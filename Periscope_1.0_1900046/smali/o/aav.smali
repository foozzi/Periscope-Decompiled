.class public Lo/aav;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ڒ;


# instance fields
.field protected buM:Lo/akw;

.field protected final buV:Ljava/lang/String;

.field protected final buW:Ljava/lang/String;

.field private final buX:I

.field private buY:Lo/ڕ;

.field private buZ:J

.field private final bva:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/alc;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/aav;->buZ:J

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aav;->bva:Ljava/util/ArrayList;

    .line 31
    iput p1, p0, Lo/aav;->buX:I

    .line 32
    iput-object p2, p0, Lo/aav;->buV:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lo/aav;->buW:Ljava/lang/String;

    .line 35
    new-instance v0, Lo/ڕ;

    iget-object v1, p0, Lo/aav;->buV:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lo/ڕ;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lo/aav;->buY:Lo/ڕ;

    .line 36
    return-void
.end method


# virtual methods
.method public getTrackCount()I
    .locals 1

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/aav;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->shutdown()V

    .line 115
    return-void
.end method

.method protected vM()Lo/alc;
    .locals 4

    .line 119
    iget-object v2, p0, Lo/aav;->bva:Ljava/util/ArrayList;

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v0, p0, Lo/aav;->bva:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lo/aav;->bva:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/alc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 125
    :cond_0
    monitor-exit v2

    const/4 v0, 0x0

    return-object v0

    .line 126
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public ˊ(IJLo/م;Lo/ڋ;Z)I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Lo/akw;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/aav;->buM:Lo/akw;

    .line 40
    return-void
.end method

.method public ˋ(Lo/alc;)V
    .locals 6

    .line 44
    iget-object v4, p0, Lo/aav;->bva:Ljava/util/ArrayList;

    monitor-enter v4

    .line 46
    :try_start_0
    iget-object v0, p0, Lo/aav;->bva:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p1}, Lo/alc;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/aav;->buZ:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lo/alc;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/aav;->buZ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 53
    :goto_0
    return-void
.end method

.method public ˏ(IJ)V
    .locals 0

    .line 76
    return-void
.end method

.method public ϊ(I)Lo/ڕ;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/aav;->buY:Lo/ڕ;

    return-object v0
.end method

.method public ג(I)V
    .locals 0

    .line 82
    return-void
.end method

.method public ᐧ(J)Z
    .locals 1

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public ᐨ(J)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lo/aav;->bva:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ﹳ(J)V
    .locals 0

    .line 100
    return-void
.end method

.method public ﻥ()J
    .locals 6

    .line 105
    iget-object v4, p0, Lo/aav;->bva:Ljava/util/ArrayList;

    monitor-enter v4

    .line 107
    :try_start_0
    iget-wide v0, p0, Lo/aav;->buZ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    monitor-exit v4

    return-wide v0

    .line 108
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method
