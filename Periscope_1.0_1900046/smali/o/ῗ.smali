.class public final Lo/ῗ;
.super Lo/ゞ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ῗ$if;
    }
.end annotation


# instance fields
.field public final re:J

.field public final version:I

.field public final xW:Z

.field public final yk:I

.field public final yl:I

.field public final ym:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\u1fd7$if;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;IIIZLjava/util/List<Lo/\u1fd7$if;>;)V"
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lo/ゞ;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p2, p0, Lo/ῗ;->yk:I

    .line 76
    iput p3, p0, Lo/ῗ;->yl:I

    .line 77
    iput p4, p0, Lo/ῗ;->version:I

    .line 78
    iput-boolean p5, p0, Lo/ῗ;->xW:Z

    .line 79
    iput-object p6, p0, Lo/ῗ;->ym:Ljava/util/List;

    .line 81
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ῗ$if;

    move-object v6, v0

    .line 83
    iget-wide v0, v6, Lo/ῗ$if;->tN:J

    iget-wide v2, v6, Lo/ῗ$if;->yo:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ῗ;->re:J

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ῗ;->re:J

    .line 87
    :goto_0
    return-void
.end method
