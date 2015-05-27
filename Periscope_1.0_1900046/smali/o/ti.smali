.class public Lo/ti;
.super Lo/tb;
.source ""


# direct methods
.method public constructor <init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;)V
    .locals 6

    .line 15
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lo/sm;->XP:Lo/sm;

    invoke-direct/range {v0 .. v5}, Lo/tb;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;Lo/sm;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/te;)Z
    .locals 1

    .line 12
    invoke-super {p0, p1}, Lo/tb;->ˊ(Lo/te;)Z

    move-result v0

    return v0
.end method
