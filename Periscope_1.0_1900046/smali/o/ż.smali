.class final Lo/ż;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/lang/Comparable<Lo/\u017c;>;"
    }
.end annotation


# instance fields
.field public final sJ:J

.field public final zw:Z

.field public final zx:[Lo/č;


# direct methods
.method public constructor <init>(JZ[Lo/č;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lo/ż;->sJ:J

    .line 26
    iput-boolean p3, p0, Lo/ż;->zw:Z

    .line 27
    iput-object p4, p0, Lo/ż;->zx:[Lo/č;

    .line 28
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 18
    move-object v0, p1

    check-cast v0, Lo/ż;

    invoke-virtual {p0, v0}, Lo/ż;->ˊ(Lo/ż;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ż;)I
    .locals 6

    .line 32
    iget-wide v0, p0, Lo/ż;->sJ:J

    iget-wide v2, p1, Lo/ż;->sJ:J

    sub-long v4, v0, v2

    .line 33
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
