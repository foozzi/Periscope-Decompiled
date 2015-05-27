.class final enum Lo/zr;
.super Lo/zq;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/zq;-><init>(Ljava/lang/String;ILo/zr;)V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 8
    move-object v0, p1

    check-cast v0, Lo/xh;

    move-object v1, p2

    check-cast v1, Lo/xh;

    invoke-virtual {p0, v0, v1}, Lo/zr;->ˊ(Lo/xh;Lo/xh;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/xh;Lo/xh;)I
    .locals 4

    .line 12
    invoke-virtual {p1}, Lo/xh;->ud()J

    move-result-wide v0

    invoke-virtual {p2}, Lo/xh;->ud()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method
