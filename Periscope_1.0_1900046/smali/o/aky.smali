.class public Lo/aky;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bKY:[I

.field private bKZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/akz;>;"
        }
    .end annotation
.end field

.field private bLa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/akz;>;"
        }
    .end annotation
.end field

.field private bLb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/akz;>;"
        }
    .end annotation
.end field

.field private bLc:I

.field private bLd:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lo/aky;->bKY:[I

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/aky;->bKZ:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/aky;->bLa:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/aky;->bLb:Ljava/util/List;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lo/aky;->bLc:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lo/aky;->bLd:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x20
        0x1000
    .end array-data
.end method


# virtual methods
.method public shutdown()V
    .locals 3

    .line 75
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/aky;->bLd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/aky;->bLc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public ˋ(Lo/akz;)V
    .locals 5

    .line 60
    invoke-virtual {p1}, Lo/akz;->Bo()Lo/aky;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 62
    const-string v0, "RTMP"

    const-string v1, "Pool anomaly"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v0, p1, Lo/akz;->buffer:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lo/aky;->ᓼ(I)Ljava/util/List;

    move-result-object v2

    .line 65
    const/4 v0, 0x0

    iput v0, p1, Lo/akz;->length:I

    .line 66
    move-object v3, p0

    monitor-enter v3

    .line 68
    :try_start_0
    iget v0, p0, Lo/aky;->bLd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/aky;->bLd:I

    .line 69
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 71
    :goto_0
    return-void
.end method

.method ᓼ(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Ljava/util/List<Lo/akz;>;"
        }
    .end annotation

    .line 23
    iget-object v2, p0, Lo/aky;->bKZ:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lo/aky;->bKY:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-le p1, v0, :cond_0

    .line 26
    iget-object v2, p0, Lo/aky;->bLb:Ljava/util/List;

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lo/aky;->bKY:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-le p1, v0, :cond_1

    .line 30
    iget-object v2, p0, Lo/aky;->bLa:Ljava/util/List;

    .line 32
    :cond_1
    :goto_0
    return-object v2
.end method

.method public ᓽ(I)Lo/akz;
    .locals 6

    .line 37
    const/4 v2, 0x0

    .line 38
    move-object v3, p0

    monitor-enter v3

    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lo/aky;->ᓼ(I)Ljava/util/List;

    move-result-object v4

    .line 41
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akz;

    move-object v2, v0

    .line 45
    :cond_0
    if-nez v2, :cond_1

    .line 47
    new-instance v2, Lo/akz;

    invoke-direct {v2}, Lo/akz;-><init>()V

    .line 48
    invoke-virtual {v2, p0}, Lo/akz;->ˊ(Lo/aky;)V

    .line 49
    iget v0, p0, Lo/aky;->bLc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/aky;->bLc:I

    .line 51
    :cond_1
    invoke-virtual {v2, p1}, Lo/akz;->ᔀ(I)V

    .line 53
    iget v0, p0, Lo/aky;->bLd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/aky;->bLd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 55
    :goto_0
    return-object v2
.end method
