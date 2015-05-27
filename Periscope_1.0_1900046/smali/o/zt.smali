.class final enum Lo/zt;
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

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/zq;-><init>(Ljava/lang/String;ILo/zr;)V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 21
    move-object v0, p1

    check-cast v0, Lo/xh;

    move-object v1, p2

    check-cast v1, Lo/xh;

    invoke-virtual {p0, v0, v1}, Lo/zt;->ˊ(Lo/xh;Lo/xh;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/xh;Lo/xh;)I
    .locals 2

    .line 24
    invoke-virtual {p1}, Lo/xh;->uh()Z

    move-result v0

    invoke-virtual {p2}, Lo/xh;->uh()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method
