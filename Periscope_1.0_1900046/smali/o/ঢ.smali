.class public abstract Lo/ঢ;
.super Lo/र;
.source ""


# instance fields
.field private fw:[B

.field private limit:I

.field private volatile tG:Z


# direct methods
.method public constructor <init>(Lo/ϒ;Lo/к;IILo/ব;[B)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lo/र;-><init>(Lo/ϒ;Lo/к;IILo/ব;)V

    .line 51
    iput-object p6, p0, Lo/ঢ;->fw:[B

    .line 52
    return-void
.end method

.method private ᐯ()V
    .locals 3

    .line 114
    iget-object v0, p0, Lo/ঢ;->fw:[B

    if-nez v0, :cond_0

    .line 115
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lo/ঢ;->fw:[B

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lo/ঢ;->fw:[B

    array-length v0, v0

    iget v1, p0, Lo/ঢ;->limit:I

    add-int/lit16 v1, v1, 0x4000

    if-ge v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lo/ঢ;->fw:[B

    iget-object v1, p0, Lo/ঢ;->fw:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lo/ঢ;->fw:[B

    .line 121
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract ˊ([BI)V
.end method

.method public ব()J
    .locals 2

    .line 67
    iget v0, p0, Lo/ঢ;->limit:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public শ()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lo/ঢ;->fw:[B

    return-object v0
.end method

.method public final ঽ()V
    .locals 1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ঢ;->tG:Z

    .line 75
    return-void
.end method

.method public final ก()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lo/ঢ;->tG:Z

    return v0
.end method

.method public final კ()V
    .locals 6

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/ঢ;->tF:Lo/ϒ;

    iget-object v1, p0, Lo/ঢ;->tE:Lo/к;

    invoke-interface {v0, v1}, Lo/ϒ;->ˊ(Lo/к;)J

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lo/ঢ;->limit:I

    .line 87
    const/4 v4, 0x0

    .line 88
    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    iget-boolean v0, p0, Lo/ঢ;->tG:Z

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lo/ঢ;->ᐯ()V

    .line 90
    iget-object v0, p0, Lo/ঢ;->tF:Lo/ϒ;

    iget-object v1, p0, Lo/ঢ;->fw:[B

    iget v2, p0, Lo/ঢ;->limit:I

    const/16 v3, 0x4000

    invoke-interface {v0, v1, v2, v3}, Lo/ϒ;->read([BII)I

    move-result v4

    .line 91
    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    .line 92
    iget v0, p0, Lo/ঢ;->limit:I

    add-int/2addr v0, v4

    iput v0, p0, Lo/ঢ;->limit:I

    goto :goto_0

    .line 95
    :cond_1
    iget-boolean v0, p0, Lo/ঢ;->tG:Z

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lo/ঢ;->fw:[B

    iget v1, p0, Lo/ঢ;->limit:I

    invoke-virtual {p0, v0, v1}, Lo/ঢ;->ˊ([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_2
    iget-object v0, p0, Lo/ঢ;->tF:Lo/ϒ;

    invoke-interface {v0}, Lo/ϒ;->close()V

    .line 100
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v5

    iget-object v0, p0, Lo/ঢ;->tF:Lo/ϒ;

    invoke-interface {v0}, Lo/ϒ;->close()V

    throw v5

    .line 101
    :goto_1
    return-void
.end method
