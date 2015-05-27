.class public Lo/tu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final Zq:Lo/tf;

.field public final Zr:Lo/tq;

.field public final Zs:Lo/tn;

.field public final Zt:Lo/tg;

.field public final Zu:J

.field public final Zv:I

.field public final Zw:I

.field public final oy:Lo/tp;

.field public final py:Lo/tc;


# direct methods
.method public constructor <init>(JLo/tf;Lo/tq;Lo/tp;Lo/tn;Lo/tc;Lo/tg;II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lo/tu;->Zu:J

    .line 24
    iput-object p3, p0, Lo/tu;->Zq:Lo/tf;

    .line 25
    iput-object p4, p0, Lo/tu;->Zr:Lo/tq;

    .line 26
    iput-object p5, p0, Lo/tu;->oy:Lo/tp;

    .line 27
    iput-object p6, p0, Lo/tu;->Zs:Lo/tn;

    .line 28
    iput p9, p0, Lo/tu;->Zv:I

    .line 29
    iput p10, p0, Lo/tu;->Zw:I

    .line 30
    iput-object p7, p0, Lo/tu;->py:Lo/tc;

    .line 31
    iput-object p8, p0, Lo/tu;->Zt:Lo/tg;

    .line 32
    return-void
.end method


# virtual methods
.method public ᒽ(J)Z
    .locals 2

    .line 35
    iget-wide v0, p0, Lo/tu;->Zu:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
