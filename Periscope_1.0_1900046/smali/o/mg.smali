.class public Lo/mg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Lo/lw;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final Qf:Lo/lw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lo/go;
        value = "auth_token"
    .end annotation
.end field

.field private final id:J
    .annotation runtime Lo/go;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/lw;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/mg;->Qf:Lo/lw;

    .line 18
    iput-wide p2, p0, Lo/mg;->id:J

    .line 19
    return-void
.end method


# virtual methods
.method public aX()Lo/lw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/mg;->Qf:Lo/lw;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 31
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 32
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/mg;

    move-object v4, v0

    .line 36
    iget-wide v0, p0, Lo/mg;->id:J

    iget-wide v2, v4, Lo/mg;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 37
    :cond_3
    iget-object v0, p0, Lo/mg;->Qf:Lo/lw;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/mg;->Qf:Lo/lw;

    iget-object v1, v4, Lo/mg;->Qf:Lo/lw;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_4
    iget-object v0, v4, Lo/mg;->Qf:Lo/lw;

    if-eqz v0, :cond_5

    .line 38
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public getId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lo/mg;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 46
    iget-object v0, p0, Lo/mg;->Qf:Lo/lw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/mg;->Qf:Lo/lw;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 47
    :goto_0
    mul-int/lit8 v0, v6, 0x1f

    iget-wide v1, p0, Lo/mg;->id:J

    iget-wide v3, p0, Lo/mg;->id:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int v6, v0, v1

    .line 48
    return v6
.end method
