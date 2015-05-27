.class public abstract Lo/ঽ;
.super Lo/र;
.source ""


# instance fields
.field public final tN:J

.field public final tO:J

.field public final tP:I

.field public final tQ:Z


# direct methods
.method public constructor <init>(Lo/ϒ;Lo/к;ILo/ব;JJIZ)V
    .locals 6

    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lo/र;-><init>(Lo/ϒ;Lo/к;IILo/ব;)V

    .line 57
    invoke-static {p4}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-wide p5, p0, Lo/ঽ;->tN:J

    .line 59
    iput-wide p7, p0, Lo/ঽ;->tO:J

    .line 60
    iput p9, p0, Lo/ঽ;->tP:I

    .line 61
    move/from16 v0, p10

    iput-boolean v0, p0, Lo/ঽ;->tQ:Z

    .line 62
    return-void
.end method
